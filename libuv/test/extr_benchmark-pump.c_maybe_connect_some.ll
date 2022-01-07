; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_maybe_connect_some.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_maybe_connect_some.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@max_connect_socket = common dso_local global i64 0, align 8
@TARGET_CONNECTIONS = common dso_local global i64 0, align 8
@write_sockets = common dso_local global i64 0, align 8
@MAX_SIMULTANEOUS_CONNECTS = common dso_local global i64 0, align 8
@type = common dso_local global i64 0, align 8
@TCP = common dso_local global i64 0, align 8
@tcp_write_handles = common dso_local global i32* null, align 8
@loop = common dso_local global i32 0, align 4
@connect_addr = common dso_local global i32 0, align 4
@connect_cb = common dso_local global i32 0, align 4
@pipe_write_handles = common dso_local global i32* null, align 8
@TEST_PIPENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @maybe_connect_some to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_connect_some() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %62, %0
  %6 = load i64, i64* @max_connect_socket, align 8
  %7 = load i64, i64* @TARGET_CONNECTIONS, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i64, i64* @max_connect_socket, align 8
  %11 = load i64, i64* @write_sockets, align 8
  %12 = load i64, i64* @MAX_SIMULTANEOUS_CONNECTS, align 8
  %13 = add nsw i64 %11, %12
  %14 = icmp slt i64 %10, %13
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi i1 [ false, %5 ], [ %14, %9 ]
  br i1 %16, label %17, label %63

17:                                               ; preds = %15
  %18 = load i64, i64* @type, align 8
  %19 = load i64, i64* @TCP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32*, i32** @tcp_write_handles, align 8
  %23 = load i64, i64* @max_connect_socket, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @max_connect_socket, align 8
  %25 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %25, i32** %2, align 8
  %26 = load i32, i32* @loop, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @uv_tcp_init(i32 %26, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = call i64 (...) @req_alloc()
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @connect_cb, align 4
  %38 = call i32 @uv_tcp_connect(i32* %35, i32* %36, %struct.sockaddr* bitcast (i32* @connect_addr to %struct.sockaddr*), i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  br label %62

43:                                               ; preds = %17
  %44 = load i32*, i32** @pipe_write_handles, align 8
  %45 = load i64, i64* @max_connect_socket, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* @max_connect_socket, align 8
  %47 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %47, i32** %3, align 8
  %48 = load i32, i32* @loop, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @uv_pipe_init(i32 %48, i32* %49, i32 0)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = call i64 (...) @req_alloc()
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %1, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @TEST_PIPENAME, align 4
  %60 = load i32, i32* @connect_cb, align 4
  %61 = call i32 @uv_pipe_connect(i32* %57, i32* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %43, %21
  br label %5

63:                                               ; preds = %15
  ret void
}

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @req_alloc(...) #1

declare dso_local i32 @uv_tcp_connect(i32*, i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_pipe_connect(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
