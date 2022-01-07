; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_init_ex.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_init_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tcp_init_ex(i32* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
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
  br label %102

26:                                               ; preds = %20, %16, %3
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -256
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @UV_EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %102

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = bitcast %struct.TYPE_10__* %34 to i32*
  %36 = load i32, i32* @UV_TCP, align 4
  %37 = call i32 @uv_stream_init(i32* %33, i32* %35, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load i64, i64* @INVALID_SOCKET, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AF_UNSPEC, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %32
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @SOCK_STREAM, align 4
  %71 = call i64 @socket(i32 %69, i32 %70, i32 0)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @INVALID_SOCKET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = call i64 (...) @WSAGetLastError()
  store i64 %76, i64* %10, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @QUEUE_REMOVE(i32* %78)
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @uv_translate_sys_error(i64 %80)
  store i32 %81, i32* %4, align 4
  br label %102

82:                                               ; preds = %68
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @uv_tcp_set_socket(i32 %85, %struct.TYPE_10__* %86, i64 %87, i32 %88, i32 0)
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @closesocket(i64 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = call i32 @QUEUE_REMOVE(i32* %96)
  %98 = load i64, i64* %10, align 8
  %99 = call i32 @uv_translate_sys_error(i64 %98)
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100, %32
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %92, %75, %30, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @uv_stream_init(i32*, i32*, i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @QUEUE_REMOVE(i32*) #1

declare dso_local i32 @uv_translate_sys_error(i64) #1

declare dso_local i64 @uv_tcp_set_socket(i32, %struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
