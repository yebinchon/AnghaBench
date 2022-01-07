; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_udp_listener.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-getsockname.c_udp_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@server_port = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@udpServer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Socket creation error\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Bind error\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"udp listener socket\00", align 1
@getsocknamecount = common dso_local global i32 0, align 4
@alloc = common dso_local global i32 0, align 4
@udp_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udp_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_listener() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca %struct.sockaddr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @server_port, align 4
  %7 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.sockaddr_in* %2)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @loop, align 4
  %12 = call i32 @uv_udp_init(i32 %11, i32* @udpServer)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %44

18:                                               ; preds = %0
  %19 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %20 = call i32 @uv_udp_bind(i32* @udpServer, %struct.sockaddr* %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %44

26:                                               ; preds = %18
  %27 = call i32 @memset(%struct.sockaddr* %3, i32 -1, i32 4)
  store i32 4, i32* %4, align 4
  %28 = call i32 @uv_udp_getsockname(i32* @udpServer, %struct.sockaddr* %3, i32* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @server_port, align 4
  %34 = call i32 @check_sockname(%struct.sockaddr* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @getsocknamecount, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @getsocknamecount, align 4
  %37 = load i32, i32* @alloc, align 4
  %38 = load i32, i32* @udp_recv, align 4
  %39 = call i32 @uv_udp_recv_start(i32* @udpServer, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %26, %23, %15
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_udp_init(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @uv_udp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @uv_udp_getsockname(i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @check_sockname(%struct.sockaddr*, i8*, i32, i8*) #1

declare dso_local i32 @uv_udp_recv_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
