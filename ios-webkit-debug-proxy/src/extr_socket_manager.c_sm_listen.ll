; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_listen.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i8* null, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_listen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i8*, i8** @AF_INET, align 8
  %10 = load i32, i32* @SOCK_STREAM, align 4
  %11 = load i32, i32* @IPPROTO_TCP, align 4
  %12 = call i32 @socket(i8* %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @F_GETFL, align 4
  %19 = call i32 @fcntl(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** @AF_INET, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @INADDR_ANY, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SOL_SOCKET, align 4
  %30 = load i32, i32* @SO_REUSEADDR, align 4
  %31 = bitcast i32* %7 to i8*
  %32 = call i64 @setsockopt(i32 %28, i32 %29, i32 %30, i8* %31, i32 4)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @FIONBIO, align 4
  %40 = bitcast i32* %8 to i8*
  %41 = call i64 @ioctl(i32 %38, i32 %39, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %46 = call i64 @bind(i32 %44, %struct.sockaddr* %45, i32 24)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @listen(i32 %49, i32 5)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %43, %37, %34, %16
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @close(i32 %53)
  store i32 -1, i32* %2, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %52, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @socket(i8*, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
