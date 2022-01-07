; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-udp-ipv6.c_do_test.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-udp-ipv6.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"::0\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@alloc_cb = common dso_local global i32 0, align 4
@client = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@req_ = common dso_local global i32 0, align 4
@send_cb = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@timeout_cb = common dso_local global i32 0, align 4
@close_cb_called = common dso_local global i32 0, align 4
@send_cb_called = common dso_local global i64 0, align 8
@recv_cb_called = common dso_local global i64 0, align 8
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @TEST_PORT, align 4
  %10 = call i64 @uv_ip6_addr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.sockaddr_in6* %5)
  %11 = icmp eq i64 0, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = call i32 (...) @uv_default_loop()
  %15 = call i32 @uv_udp_init(i32 %14, i32* @server)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = bitcast %struct.sockaddr_in6* %5 to %struct.sockaddr*
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @uv_udp_bind(i32* @server, %struct.sockaddr* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* @alloc_cb, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @uv_udp_recv_start(i32* @server, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = call i32 (...) @uv_default_loop()
  %35 = call i32 @uv_udp_init(i32 %34, i32* @client)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = call i32 @uv_buf_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @TEST_PORT, align 4
  %42 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41, %struct.sockaddr_in* %6)
  %43 = icmp eq i64 0, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %47 = load i32, i32* @send_cb, align 4
  %48 = call i32 @uv_udp_send(i32* @req_, i32* @client, i32* %7, i32 1, %struct.sockaddr* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = call i32 (...) @uv_default_loop()
  %54 = call i32 @uv_timer_init(i32 %53, i32* @timeout)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load i32, i32* @timeout_cb, align 4
  %60 = call i32 @uv_timer_start(i32* @timeout, i32 %59, i32 500, i32 0)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load i32, i32* @close_cb_called, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i64, i64* @send_cb_called, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i64, i64* @recv_cb_called, align 8
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = call i32 (...) @uv_default_loop()
  %78 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %79 = call i32 @uv_run(i32 %77, i32 %78)
  %80 = load i32, i32* @close_cb_called, align 4
  %81 = icmp eq i32 %80, 3
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @uv_udp_init(i32, i32*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_udp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_udp_recv_start(i32*, i32, i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_udp_send(i32*, i32*, i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_timer_init(i32, i32*) #1

declare dso_local i32 @uv_timer_start(i32*, i32, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
