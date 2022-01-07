; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_on_connection_tcp_conn.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_on_connection_tcp_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@tcp_server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@conn_notify_req = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@on_read_alloc = common dso_local global i32 0, align 4
@on_tcp_child_process_read = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @ipc_on_connection_tcp_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_on_connection_tcp_conn(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = icmp eq %struct.TYPE_8__* bitcast (i32* @tcp_server to %struct.TYPE_8__*), %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i32* @malloc(i32 4)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @uv_tcp_init(i32 %22, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_8__*
  %32 = call i32 @uv_accept(%struct.TYPE_8__* %29, %struct.TYPE_8__* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = call i32 @uv_buf_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_8__*
  %40 = call i32 @uv_write2(i32* @conn_notify_req, %struct.TYPE_8__* bitcast (i32* @channel to %struct.TYPE_8__*), i32* %6, i32 1, %struct.TYPE_8__* %39, i32* null)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_8__*
  %47 = load i32, i32* @on_read_alloc, align 4
  %48 = load i32, i32* @on_tcp_child_process_read, align 4
  %49 = call i32 @uv_read_start(%struct.TYPE_8__* %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @close_cb, align 4
  %56 = call i32 @uv_close(i32* %54, i32 %55)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_accept(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_write2(i32*, %struct.TYPE_8__*, i32*, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @uv_read_start(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
