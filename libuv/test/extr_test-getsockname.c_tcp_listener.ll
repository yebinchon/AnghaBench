; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_tcp_listener.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_tcp_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@server_port = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@tcpServer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Socket creation error\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Bind error\0A\00", align 1
@on_connection = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Listen error\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"server socket\00", align 1
@getsocknamecount = common dso_local global i32 0, align 4
@UV_ENOTCONN = common dso_local global i32 0, align 4
@getpeernamecount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tcp_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_listener() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca %struct.sockaddr, align 4
  %4 = alloca %struct.sockaddr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @server_port, align 4
  %8 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.sockaddr_in* %2)
  %9 = icmp eq i64 0, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* @loop, align 4
  %13 = call i32 @uv_tcp_init(i32 %12, i32* @tcpServer)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %54

19:                                               ; preds = %0
  %20 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %21 = call i32 @uv_tcp_bind(i32* @tcpServer, %struct.sockaddr* %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %54

27:                                               ; preds = %19
  %28 = load i32, i32* @on_connection, align 4
  %29 = call i32 @uv_listen(i32* @tcpServer, i32 128, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %54

35:                                               ; preds = %27
  %36 = call i32 @memset(%struct.sockaddr* %3, i32 -1, i32 4)
  store i32 4, i32* %5, align 4
  %37 = call i32 @uv_tcp_getsockname(i32* @tcpServer, %struct.sockaddr* %3, i32* %5)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i32, i32* @server_port, align 4
  %43 = call i32 @check_sockname(%struct.sockaddr* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @getsocknamecount, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @getsocknamecount, align 4
  store i32 4, i32* %5, align 4
  %46 = call i32 @uv_tcp_getpeername(i32* @tcpServer, %struct.sockaddr* %4, i32* %5)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @UV_ENOTCONN, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* @getpeernamecount, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @getpeernamecount, align 4
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %35, %32, %24, %16
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @uv_tcp_getsockname(i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @check_sockname(%struct.sockaddr*, i8*, i32, i8*) #1

declare dso_local i32 @uv_tcp_getpeername(i32*, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
