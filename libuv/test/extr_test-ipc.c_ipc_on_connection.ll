; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_on_connection.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_ipc_on_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@connection_accepted = common dso_local global i32 0, align 4
@tcp_server = common dso_local global i32 0, align 4
@conn = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@close_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"accepted_connection\0A\00", align 1
@conn_notify_req = common dso_local global i32 0, align 4
@channel = common dso_local global i32 0, align 4
@conn_notify_write_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @ipc_on_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_on_connection(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @connection_accepted, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = icmp eq %struct.TYPE_7__* bitcast (i32* @tcp_server to %struct.TYPE_7__*), %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @uv_tcp_init(i32 %20, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @conn, i32 0, i32 0))
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @uv_accept(%struct.TYPE_7__* %26, %struct.TYPE_7__* bitcast (%struct.TYPE_8__* @conn to %struct.TYPE_7__*))
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* @close_cb, align 4
  %33 = call i32 @uv_close(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @conn, i32 0, i32 0), i32 %32)
  %34 = call i32 @uv_buf_init(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 20)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @conn_notify_write_cb, align 4
  %36 = call i32 @uv_write2(i32* @conn_notify_req, %struct.TYPE_7__* bitcast (i32* @channel to %struct.TYPE_7__*), i32* %6, i32 1, i32* null, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  store i32 1, i32* @connection_accepted, align 4
  br label %41

41:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_accept(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_write2(i32*, %struct.TYPE_7__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
