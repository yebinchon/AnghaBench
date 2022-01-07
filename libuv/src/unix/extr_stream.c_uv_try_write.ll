; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_try_write.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_try_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32* }
%struct.TYPE_9__ = type { i64, i32*, i32*, i32 }

@UV_EAGAIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@uv_try_write_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_try_write(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @UV_EAGAIN, align 4
  store i32 %23, i32* %4, align 4
  br label %108

24:                                               ; preds = %17
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* @POLLOUT, align 4
  %28 = call i32 @uv__io_active(i32* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @uv_try_write_cb, align 4
  %33 = call i32 @uv_write(%struct.TYPE_9__* %12, %struct.TYPE_10__* %29, i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %108

38:                                               ; preds = %24
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @uv__count_bufs(i32* %39, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i64 @uv__write_req_size(%struct.TYPE_9__* %12)
  store i64 %46, i64* %11, align 8
  br label %48

47:                                               ; preds = %38
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %58 = call i32 @QUEUE_REMOVE(i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @uv__req_unregister(i32 %61, %struct.TYPE_9__* %12)
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @uv__free(i32* %70)
  br label %72

72:                                               ; preds = %68, %48
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* @POLLOUT, align 4
  %83 = call i32 @uv__io_stop(i32 %79, i32* %81, i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = call i32 @uv__stream_osx_interrupt_select(%struct.TYPE_10__* %84)
  br label %86

86:                                               ; preds = %76, %72
  %87 = load i64, i64* %10, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  br label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @UV_EAGAIN, align 4
  %101 = sext i32 %100 to i64
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i64 [ %98, %96 ], [ %101, %99 ]
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %108

105:                                              ; preds = %89, %86
  %106 = load i64, i64* %10, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %102, %36, %22
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @uv__io_active(i32*, i32) #1

declare dso_local i32 @uv_write(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i64 @uv__count_bufs(i32*, i32) #1

declare dso_local i64 @uv__write_req_size(%struct.TYPE_9__*) #1

declare dso_local i32 @QUEUE_REMOVE(i32*) #1

declare dso_local i32 @uv__req_unregister(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i32 @uv__io_stop(i32, i32*, i32) #1

declare dso_local i32 @uv__stream_osx_interrupt_select(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
