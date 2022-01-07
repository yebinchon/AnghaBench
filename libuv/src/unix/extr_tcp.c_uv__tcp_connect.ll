; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv__tcp_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv__tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_9__* }
%struct.sockaddr = type { i32 }

@UV_TCP = common dso_local global i64 0, align 8
@UV_EALREADY = common dso_local global i32 0, align 4
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@UV_CONNECT = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__tcp_connect(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, %struct.sockaddr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UV_TCP, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @UV_EALREADY, align 4
  store i32 %26, i32* %6, align 4
  br label %122

27:                                               ; preds = %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %33 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @maybe_new_socket(%struct.TYPE_8__* %28, i32 %31, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %122

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %56, %40
  store i64 0, i64* @errno, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = call i32 @uv__stream_fd(%struct.TYPE_8__* %44)
  %46 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @connect(i32 %45, %struct.sockaddr* %46, i32 %47)
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EINTR, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  br i1 %57, label %43, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load i64, i64* @errno, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINPROGRESS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %82

69:                                               ; preds = %64
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @ECONNREFUSED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* @ECONNREFUSED, align 8
  %75 = call i32 @UV__ERR(i64 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %81

78:                                               ; preds = %69
  %79 = load i64, i64* @errno, align 8
  %80 = call i32 @UV__ERR(i64 %79)
  store i32 %80, i32* %6, align 4
  br label %122

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %61, %58
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = load i32, i32* @UV_CONNECT, align 4
  %89 = call i32 @uv__req_init(i32 %86, %struct.TYPE_9__* %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = bitcast %struct.TYPE_8__* %93 to i32*
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @QUEUE_INIT(i32* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* @POLLOUT, align 4
  %109 = call i32 @uv__io_start(i32 %105, i32* %107, i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %83
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = call i32 @uv__io_feed(i32 %117, i32* %119)
  br label %121

121:                                              ; preds = %114, %83
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %78, %38, %25
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @maybe_new_socket(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @uv__stream_fd(%struct.TYPE_8__*) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @uv__req_init(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @QUEUE_INIT(i32*) #1

declare dso_local i32 @uv__io_start(i32, i32*, i32) #1

declare dso_local i32 @uv__io_feed(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
