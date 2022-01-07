; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-accept.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-accept.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.sockaddr = type { i32 }

@tcp_incoming = common dso_local global i32* null, align 8
@pending_incoming = common dso_local global i32 0, align 4
@got_connections = common dso_local global i32 0, align 4
@read_cb_called = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@tcp_server = common dso_local global i32 0, align 4
@tcp_check = common dso_local global i32 0, align 4
@tcp_check_req = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@connect_cb = common dso_local global i32 0, align 4
@alloc_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = bitcast %struct.TYPE_6__* %9 to i32*
  %11 = load i32*, i32** @tcp_incoming, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = ptrtoint i32* %10 to i64
  %14 = ptrtoint i32* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @pending_incoming, align 4
  %18 = load i32, i32* @pending_incoming, align 4
  %19 = load i32, i32* @got_connections, align 4
  %20 = icmp ult i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call i64 @uv_read_stop(%struct.TYPE_6__* %23)
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 1, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* @read_cb_called, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @read_cb_called, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %53, %3
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @got_connections, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @pending_incoming, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** @tcp_incoming, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @close_cb, align 4
  %51 = call i32 @uv_close(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load i32, i32* @close_cb, align 4
  %58 = call i32 @uv_close(i32* @tcp_server, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @uv_tcp_init(i32* %59, i32* @tcp_check)
  %61 = icmp eq i64 0, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load i32, i32* @connect_cb, align 4
  %65 = call i64 @uv_tcp_connect(i32* @tcp_check_req, i32* @tcp_check, %struct.sockaddr* bitcast (i32* @addr to %struct.sockaddr*), i32 %64)
  %66 = icmp eq i64 0, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32, i32* @alloc_cb, align 4
  %70 = call i64 @uv_read_start(%struct.TYPE_6__* bitcast (i32* @tcp_check to %struct.TYPE_6__*), i32 %69, void (%struct.TYPE_6__*, i32, i32*)* @read_cb)
  %71 = icmp eq i64 0, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_read_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i64 @uv_tcp_init(i32*, i32*) #1

declare dso_local i64 @uv_tcp_connect(i32*, i32*, %struct.sockaddr*, i32) #1

declare dso_local i64 @uv_read_start(%struct.TYPE_6__*, i32, void (%struct.TYPE_6__*, i32, i32*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
