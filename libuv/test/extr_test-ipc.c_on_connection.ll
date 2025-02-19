; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_on_connection.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_on_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@local_conn_accepted = common dso_local global i32 0, align 4
@tcp_server = common dso_local global i32 0, align 4
@close_server_conn_cb = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @on_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_connection(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @local_conn_accepted, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = icmp eq %struct.TYPE_5__* bitcast (i32* @tcp_server to %struct.TYPE_5__*), %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = call i32* @malloc(i32 4)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @uv_tcp_init(i32 %24, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_5__*
  %34 = call i32 @uv_accept(%struct.TYPE_5__* %31, %struct.TYPE_5__* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** @close_server_conn_cb, align 8
  %41 = call i32 @uv_close(i32* %39, i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = bitcast %struct.TYPE_5__* %42 to i32*
  %44 = call i32 @uv_close(i32* %43, i32* null)
  store i32 1, i32* @local_conn_accepted, align 4
  br label %45

45:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_accept(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
