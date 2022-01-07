; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper_tcp_connection.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper_tcp_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@channel = common dso_local global i32 0, align 4
@tcp_server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@BACKLOG = common dso_local global i32 0, align 4
@ipc_on_connection_tcp_conn = common dso_local global i32 0, align 4
@conn = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@connect_child_process_cb = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@tcp_conn_read_cb_called = common dso_local global i32 0, align 4
@tcp_conn_write_cb_called = common dso_local global i32 0, align 4
@close_cb_called = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_helper_tcp_connection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = call i32 (...) @uv_default_loop()
  %4 = call i32 @uv_pipe_init(i32 %3, i32* @channel, i32 1)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = call i32 @uv_pipe_open(i32* @channel, i32 0)
  %10 = call i32 @uv_is_readable(i32* @channel)
  %11 = icmp eq i32 1, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = call i32 @uv_is_writable(i32* @channel)
  %15 = icmp eq i32 1, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = call i64 @uv_is_closing(i32* @channel)
  %19 = icmp eq i64 0, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = call i32 (...) @uv_default_loop()
  %23 = call i32 @uv_tcp_init(i32 %22, i32* @tcp_server)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* @TEST_PORT, align 4
  %29 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28, %struct.sockaddr_in* %2)
  %30 = icmp eq i64 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %34 = call i32 @uv_tcp_bind(i32* @tcp_server, %struct.sockaddr* %33, i32 0)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* @BACKLOG, align 4
  %40 = load i32, i32* @ipc_on_connection_tcp_conn, align 4
  %41 = call i32 @uv_listen(i32* @tcp_server, i32 %39, i32 %40)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = call i32 (...) @uv_default_loop()
  %47 = call i32 @uv_tcp_init(i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conn, i32 0, i32 0))
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* @TEST_PORT, align 4
  %53 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.sockaddr_in* %2)
  %54 = icmp eq i64 0, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %58 = load i32, i32* @connect_child_process_cb, align 4
  %59 = call i32 @uv_tcp_connect(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conn, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conn, i32 0, i32 0), %struct.sockaddr* %57, i32 %58)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = call i32 (...) @uv_default_loop()
  %65 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %66 = call i32 @uv_run(i32 %64, i32 %65)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load i32, i32* @tcp_conn_read_cb_called, align 4
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load i32, i32* @tcp_conn_write_cb_called, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load i32, i32* @close_cb_called, align 4
  %80 = icmp eq i32 %79, 4
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_open(i32*, i32) #1

declare dso_local i32 @uv_is_readable(i32*) #1

declare dso_local i32 @uv_is_writable(i32*) #1

declare dso_local i64 @uv_is_closing(i32*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

declare dso_local i32 @uv_tcp_connect(i32*, i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
