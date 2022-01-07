; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-poll.c_server_poll_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-poll.c_server_poll_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@UV_READABLE = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i32 0, align 4
@UV_DISCONNECT = common dso_local global i32 0, align 4
@connection_poll_cb = common dso_local global i32 0, align 4
@NUM_CLIENTS = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @server_poll_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_poll_cb(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  store i32 4, i32* %10, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %21 = call i64 @accept(i32 %19, %struct.sockaddr* %20, i32* %10)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i64, i64* %11, align 8
  %27 = call %struct.TYPE_9__* @create_connection_context(i64 %26, i32 1)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  %28 = load i32, i32* @UV_READABLE, align 4
  %29 = load i32, i32* @UV_WRITABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UV_DISCONNECT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* @UV_READABLE, align 4
  %38 = load i32, i32* @UV_WRITABLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @UV_DISCONNECT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @connection_poll_cb, align 4
  %43 = call i32 @uv_poll_start(i32* %36, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* @NUM_CLIENTS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %3
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @close_socket(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = call i32 @destroy_server_context(%struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %54, %3
  ret void
}

declare dso_local i64 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_9__* @create_connection_context(i64, i32) #1

declare dso_local i32 @uv_poll_start(i32*, i32, i32) #1

declare dso_local i32 @close_socket(i32) #1

declare dso_local i32 @destroy_server_context(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
