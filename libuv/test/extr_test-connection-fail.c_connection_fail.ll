; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-connection-fail.c_connection_fail.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-connection-fail.c_connection_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@tcp = common dso_local global i32 0, align 4
@req = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@connect_cb_calls = common dso_local global i32 0, align 4
@close_cb_calls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @connection_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_fail(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, %struct.sockaddr_in* %3)
  %7 = icmp eq i64 0, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i32, i32* @TEST_PORT, align 4
  %11 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %10, %struct.sockaddr_in* %4)
  %12 = icmp eq i64 0, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = call i32 (...) @uv_default_loop()
  %16 = call i32 @uv_tcp_init(i32 %15, i32* @tcp)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %23 = call i64 @uv_tcp_bind(i32* @tcp, %struct.sockaddr* %22, i32 0)
  %24 = icmp eq i64 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @uv_tcp_connect(i32* @req, i32* @tcp, %struct.sockaddr* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = call i32 (...) @uv_default_loop()
  %36 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %37 = call i32 @uv_run(i32 %35, i32 %36)
  %38 = load i32, i32* @connect_cb_calls, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i32, i32* @close_cb_calls, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i64 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_tcp_connect(i32*, i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
