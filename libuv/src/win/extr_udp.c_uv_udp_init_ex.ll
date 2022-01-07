; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_init_ex.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_init_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__, i64, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_UDP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@WSARecv = common dso_local global i32 0, align 4
@WSARecvFrom = common dso_local global i32 0, align 4
@UV_UDP_RECV = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_init_ex(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @AF_INET6, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AF_UNSPEC, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @UV_EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %20, %16, %3
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -256
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @UV_EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %100

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = bitcast %struct.TYPE_5__* %34 to i32*
  %36 = load i32, i32* @UV_UDP, align 4
  %37 = call i32 @uv__handle_init(i32* %33, i32* %35, i32 %36)
  %38 = load i64, i64* @INVALID_SOCKET, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 9
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @WSARecv, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @WSARecvFrom, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* @UV_UDP_RECV, align 4
  %58 = call i32 @UV_REQ_INIT(%struct.TYPE_6__* %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @AF_UNSPEC, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %32
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @SOCK_DGRAM, align 4
  %69 = call i64 @socket(i32 %67, i32 %68, i32 0)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @INVALID_SOCKET, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = call i64 (...) @WSAGetLastError()
  store i64 %74, i64* %10, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = call i32 @QUEUE_REMOVE(i32* %76)
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @uv_translate_sys_error(i64 %78)
  store i32 %79, i32* %4, align 4
  br label %100

80:                                               ; preds = %66
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @uv_udp_set_socket(i32 %83, %struct.TYPE_5__* %84, i64 %85, i32 %86)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @closesocket(i64 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @QUEUE_REMOVE(i32* %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @uv_translate_sys_error(i64 %96)
  store i32 %97, i32* %4, align 4
  br label %100

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %32
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %90, %73, %30, %24
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @uv__handle_init(i32*, i32*, i32) #1

declare dso_local i32 @UV_REQ_INIT(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @QUEUE_REMOVE(i32*) #1

declare dso_local i32 @uv_translate_sys_error(i64) #1

declare dso_local i64 @uv_udp_set_socket(i32, %struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
