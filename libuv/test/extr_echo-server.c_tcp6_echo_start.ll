; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_echo-server.c_tcp6_echo_start.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_echo-server.c_tcp6_echo_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@tcpServer = common dso_local global i32 0, align 4
@server = common dso_local global i32* null, align 8
@TCP = common dso_local global i32 0, align 4
@serverType = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Socket creation error\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"IPv6 not supported\0A\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@on_connection = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Listen error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tcp6_echo_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp6_echo_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @uv_ip6_addr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.sockaddr_in6* %4)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  store i32* @tcpServer, i32** @server, align 8
  %11 = load i32, i32* @TCP, align 4
  store i32 %11, i32* @serverType, align 4
  %12 = load i32, i32* @loop, align 4
  %13 = call i32 @uv_tcp_init(i32 %12, i32* @tcpServer)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = bitcast %struct.sockaddr_in6* %4 to %struct.sockaddr*
  %21 = call i32 @uv_tcp_bind(i32* @tcpServer, %struct.sockaddr* %20, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

27:                                               ; preds = %19
  %28 = load i32, i32* @SOMAXCONN, align 4
  %29 = load i32, i32* @on_connection, align 4
  %30 = call i32 @uv_listen(i32* @tcpServer, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %24, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
