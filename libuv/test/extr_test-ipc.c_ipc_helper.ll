; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@tcp_server = common dso_local global i32 0, align 4
@BACKLOG = common dso_local global i32 0, align 4
@ipc_on_connection = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@write_req = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@connection_accepted = common dso_local global i32 0, align 4
@close_cb_called = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_helper(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @TEST_PORT, align 4
  %7 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.sockaddr_in* %3)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = call i32 (...) @uv_default_loop()
  %12 = call i32 @uv_pipe_init(i32 %11, i32* @channel, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = call i32 @uv_pipe_open(i32* @channel, i32 0)
  %18 = call i32 @uv_is_readable(i32* @channel)
  %19 = icmp eq i32 1, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = call i32 @uv_is_writable(i32* @channel)
  %23 = icmp eq i32 1, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = call i64 @uv_is_closing(i32* @channel)
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = call i32 (...) @uv_default_loop()
  %31 = call i32 @uv_tcp_init(i32 %30, i32* @tcp_server)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %37 = call i32 @uv_tcp_bind(i32* @tcp_server, %struct.sockaddr* %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @BACKLOG, align 4
  %46 = load i32, i32* @ipc_on_connection, align 4
  %47 = call i32 @uv_listen(i32* @tcp_server, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  br label %52

52:                                               ; preds = %44, %1
  %53 = call i32 @uv_buf_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  store i32 %53, i32* %5, align 4
  %54 = call i32 @uv_write2(i32* @write_req, i32* @channel, i32* %5, i32 1, i32* @tcp_server, i32* null)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load i32, i32* @BACKLOG, align 4
  %63 = load i32, i32* @ipc_on_connection, align 4
  %64 = call i32 @uv_listen(i32* @tcp_server, i32 %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  br label %69

69:                                               ; preds = %61, %52
  %70 = call i32 (...) @notify_parent_process()
  %71 = call i32 (...) @uv_default_loop()
  %72 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %73 = call i32 @uv_run(i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load i32, i32* @connection_accepted, align 4
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load i32, i32* @close_cb_called, align 4
  %83 = icmp eq i32 %82, 3
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_pipe_open(i32*, i32) #1

declare dso_local i32 @uv_is_readable(i32*) #1

declare dso_local i32 @uv_is_writable(i32*) #1

declare dso_local i64 @uv_is_closing(i32*) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_listen(i32*, i32, i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_write2(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @notify_parent_process(...) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
