; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_open.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_PROTOCOL_INFOW = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@UV_HANDLE_BOUND = common dso_local global i32 0, align 4
@UV_HANDLE_UDP_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_open(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 4, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SOL_SOCKET, align 4
  %11 = load i32, i32* @SO_PROTOCOL_INFOW, align 4
  %12 = bitcast %struct.TYPE_8__* %6 to i8*
  %13 = call i64 @getsockopt(i32 %9, i32 %10, i32 %11, i8* %12, i32* %7)
  %14 = load i64, i64* @SOCKET_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 @uv_translate_sys_error(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @uv_udp_set_socket(i32 %22, %struct.TYPE_7__* %23, i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @uv_translate_sys_error(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %19
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = call i64 @uv__udp_is_bound(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = call i64 @uv__udp_is_connected(%struct.TYPE_7__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @UV_HANDLE_UDP_CONNECTED, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %43
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %30, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @uv_udp_set_socket(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @uv__udp_is_bound(%struct.TYPE_7__*) #1

declare dso_local i64 @uv__udp_is_connected(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
