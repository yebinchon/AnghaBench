; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper_bind_twice.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_helper_bind_twice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@tcp_server = common dso_local global i32 0, align 4
@tcp_server2 = common dso_local global i32 0, align 4
@write_req = common dso_local global i32 0, align 4
@write_req2 = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_helper_bind_twice() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @TEST_PORT, align 4
  %5 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %4, %struct.sockaddr_in* %1)
  %6 = icmp eq i64 0, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = call i32 (...) @uv_default_loop()
  %10 = call i32 @uv_pipe_init(i32 %9, i32* @channel, i32 1)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = call i32 @uv_pipe_open(i32* @channel, i32 0)
  %16 = call i32 @uv_is_readable(i32* @channel)
  %17 = icmp eq i32 1, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = call i32 @uv_is_writable(i32* @channel)
  %21 = icmp eq i32 1, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = call i64 @uv_is_closing(i32* @channel)
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = call i32 @uv_buf_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  store i32 %28, i32* %3, align 4
  %29 = call i32 (...) @uv_default_loop()
  %30 = call i32 @uv_tcp_init(i32 %29, i32* @tcp_server)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = call i32 (...) @uv_default_loop()
  %36 = call i32 @uv_tcp_init(i32 %35, i32* @tcp_server2)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %42 = call i32 @uv_tcp_bind(i32* @tcp_server, %struct.sockaddr* %41, i32 0)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %48 = call i32 @uv_tcp_bind(i32* @tcp_server2, %struct.sockaddr* %47, i32 0)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = call i32 @uv_write2(i32* @write_req, i32* @channel, i32* %3, i32 1, i32* @tcp_server, i32* null)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = call i32 @uv_write2(i32* @write_req2, i32* @channel, i32* %3, i32 1, i32* @tcp_server2, i32* null)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = call i32 (...) @uv_default_loop()
  %64 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %65 = call i32 @uv_run(i32 %63, i32 %64)
  store i32 %65, i32* %2, align 4
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = call i32 (...) @MAKE_VALGRIND_HAPPY()
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

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_write2(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
