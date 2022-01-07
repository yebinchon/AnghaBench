; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_test.c_dumb_https_server.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_test.c_dumb_https_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to create socket:%s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bind failed:%s\0A\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"listen failed:%s\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"accept(2) failed:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [90 x i8] c"HTTP/1.0 200 OK\0D\0AContent-Length: 6\0D\0AConnection: close\0D\0AContent-Type: text/plain\0D\0A\0D\0Ahello\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"SSL_accept failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dumb_https_server(i16 zeroext %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i8*, align 8
  store i16 %0, i16* %4, align 2
  store i32* %1, i32** %5, align 8
  %13 = bitcast %struct.sockaddr_in* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i64, i64* @errno, align 8
  %21 = call i8* @strerror(i64 %20)
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 111, i32* %3, align 4
  br label %103

23:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_REUSEADDR, align 4
  %27 = call i32 @setsockopt(i32 %24, i32 %25, i32 %26, i32* %7, i32 4)
  %28 = load i32, i32* @AF_INET, align 4
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = call i32 @htonl(i32 2130706433)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = call i32 @htons(i32 8888)
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = bitcast %struct.sockaddr_in* %8 to i8*
  %37 = call i64 @bind(i32 %35, i8* %36, i32 12)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i32, i32* @stderr, align 4
  %41 = load i64, i64* @errno, align 8
  %42 = call i8* @strerror(i64 %41)
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 111, i32* %3, align 4
  br label %103

44:                                               ; preds = %23
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SOMAXCONN, align 4
  %47 = call i64 @listen(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = load i64, i64* @errno, align 8
  %52 = call i8* @strerror(i64 %51)
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 111, i32* %3, align 4
  br label %103

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %98
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @accept(i32 %57, i32* null, i32* null)
  store i32 %58, i32* %9, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EINTR, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %56

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = load i64, i64* @errno, align 8
  %73 = call i8* @strerror(i64 %72)
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  store i32 111, i32* %3, align 4
  br label %103

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = call i32* @SSL_new(i32* %76)
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @SSL_set_fd(i32* %78, i32 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @SSL_accept(i32* %81)
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %87 = call i32 @SSL_read(i32* %85, i8* %86, i32 4096)
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @SSL_write(i32* %88, i8* %89, i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @SSL_shutdown(i32* %93)
  br label %98

95:                                               ; preds = %75
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %84
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @SSL_free(i32* %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @close(i32 %101)
  br label %55

103:                                              ; preds = %70, %49, %39, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @bind(i32, i8*, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, i32*, i32*) #2

declare dso_local i32* @SSL_new(i32*) #2

declare dso_local i32 @SSL_set_fd(i32*, i32) #2

declare dso_local i32 @SSL_accept(i32*) #2

declare dso_local i32 @SSL_read(i32*, i8*, i32) #2

declare dso_local i32 @SSL_write(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @SSL_shutdown(i32*) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
