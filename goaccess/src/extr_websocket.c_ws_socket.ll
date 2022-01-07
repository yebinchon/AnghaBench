; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_socket.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@wsconfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to set server: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to set setsockopt: %s.\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to set bind: %s.\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unable to listen: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ws_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_socket(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo, align 4
  %5 = alloca %struct.addrinfo*, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = call i32 @memset(%struct.addrinfo* %4, i32 0, i32 20)
  %7 = load i32, i32* @AF_UNSPEC, align 4
  %8 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 4
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsconfig, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsconfig, i32 0, i32 0), align 4
  %13 = call i64 @getaddrinfo(i32 %11, i32 %12, %struct.addrinfo* %4, %struct.addrinfo** %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @gai_strerror(i32 %16)
  %18 = call i32 @FATAL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @socket(i32 %22, i32 %25, i32 %28)
  %30 = load i32*, i32** %2, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SOL_SOCKET, align 4
  %34 = load i32, i32* @SO_REUSEADDR, align 4
  %35 = call i32 @setsockopt(i32 %32, i32 %33, i32 %34, i32* %3, i32 4)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %19
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @bind(i32 %43, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 @FATAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %41
  %57 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %58 = call i32 @freeaddrinfo(%struct.addrinfo* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SOMAXCONN, align 4
  %62 = call i32 @listen(i32 %60, i32 %61)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 @FATAL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %56
  ret void
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i32, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
