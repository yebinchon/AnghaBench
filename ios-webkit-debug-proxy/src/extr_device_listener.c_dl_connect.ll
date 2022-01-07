; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_connect.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.sockaddr_un = type { i64*, i32 }
%struct.timeval = type { i32, i8* }
%struct.sockaddr = type { i32 }

@USBMUXD_FILE_PATH = common dso_local global i8* null, align 8
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not set socket to non-blocking\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not set socket receive timeout\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@USBMUXD_SOCKET_PORT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.sockaddr_un, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 8
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %12 = load i8*, i8** @USBMUXD_FILE_PATH, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @stat(i8* %13, %struct.stat* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @S_ISSOCK(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @PF_LOCAL, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16, %1
  store i32 -1, i32* %2, align 4
  br label %100

27:                                               ; preds = %21
  %28 = load i32, i32* @AF_LOCAL, align 4
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strncpy(i64* %31, i8* %32, i32 8)
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 7
  store i64 0, i64* %36, align 8
  %37 = call i64 @SUN_LEN(%struct.sockaddr_un* %7)
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %4, align 4
  %39 = bitcast %struct.sockaddr_un* %7 to %struct.sockaddr*
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @connect(i32 %38, %struct.sockaddr* %39, i64 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @close(i32 %44)
  store i32 -1, i32* %2, align 4
  br label %100

46:                                               ; preds = %27
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @F_GETFL, align 4
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @F_SETFL, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @O_NONBLOCK, align 4
  %60 = or i32 %58, %59
  %61 = call i32 (i32, i32, ...) @fcntl(i32 %56, i32 %57, i32 %60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55, %49
  %64 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %55
  br label %98

66:                                               ; preds = %46
  %67 = load i32, i32* %3, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  br label %72

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 5000, %71 ]
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sdiv i64 %75, 1000
  %77 = inttoptr i64 %76 to i8*
  %78 = ptrtoint i8* %77 to i32
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 1000
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %80, %84
  %86 = mul nsw i64 %85, 1000
  %87 = inttoptr i64 %86 to i8*
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @SOL_SOCKET, align 4
  %91 = load i32, i32* @SO_RCVTIMEO, align 4
  %92 = bitcast %struct.timeval* %11 to i8*
  %93 = call i64 @setsockopt(i32 %89, i32 %90, i32 %91, i8* %92, i32 16)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %72
  %96 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %72
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %43, %26
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i64 @SUN_LEN(%struct.sockaddr_un*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
