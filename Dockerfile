# 1. 베이스 이미지 선택
FROM eclipse-temurin:17-jdk
# 5. 작업 디렉토리 설정
WORKDIR /app
# 4. 파일 복사
COPY build/libs/devops_02-0.0.1-SNAPSHOT.jar app.jar
# 6. 포트 노출 (선택)
EXPOSE 8080
# 7. 컨테이너 실행 시 고정된 실행 명령 지정
ENTRYPOINT [ "java","-jar","app.jar" ]