; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_loop.c_uv_loop_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_loop.c_uv_loop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_18__, i32, %struct.TYPE_18__, i64, i64, %struct.TYPE_16__, i32*, i32, i32, i64, i32*, i64, %struct.TYPE_15__, i64, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.heap = type { i32 }

@UV_HANDLE_INTERNAL = common dso_local global i32 0, align 4
@uv__work_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_loop_init(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 27
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = call i32 @memset(%struct.TYPE_17__* %9, i32 0, i32 168)
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 27
  store i8* %11, i8** %13, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 26
  %16 = bitcast i32* %15 to %struct.heap*
  %17 = call i32 @heap_init(%struct.heap* %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 25
  %20 = call i32 @QUEUE_INIT(i32* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 24
  %23 = call i32 @QUEUE_INIT(i32* %22)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 23
  %26 = call i32 @QUEUE_INIT(i32* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 22
  %29 = call i32 @QUEUE_INIT(i32* %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 21
  %32 = call i32 @QUEUE_INIT(i32* %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 20
  %35 = call i32 @QUEUE_INIT(i32* %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 19
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 18
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 17
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 16
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 15
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 14
  %49 = call i32 @QUEUE_INIT(i32* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 13
  %52 = call i32 @QUEUE_INIT(i32* %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 12
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = call i32 @uv__update_time(%struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 -1, i32* %65, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 -1, i32* %69, align 4
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  store i32 -1, i32* %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 3
  store i32 -1, i32* %73, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 10
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = call i32 @uv__platform_loop_init(%struct.TYPE_17__* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %1
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %153

84:                                               ; preds = %1
  %85 = call i32 (...) @uv__signal_global_once_init()
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 8
  %89 = call i32 @uv_signal_init(%struct.TYPE_17__* %86, %struct.TYPE_18__* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %149

93:                                               ; preds = %84
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 8
  %96 = call i32 @uv__handle_unref(%struct.TYPE_18__* %95)
  %97 = load i32, i32* @UV_HANDLE_INTERNAL, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 7
  %105 = call i32 @QUEUE_INIT(i32* %104)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 4
  %108 = call i32 @uv_rwlock_init(i32* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  br label %146

112:                                              ; preds = %93
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 5
  %115 = call i32 @uv_mutex_init(i32* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %142

119:                                              ; preds = %112
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 6
  %123 = load i32, i32* @uv__work_done, align 4
  %124 = call i32 @uv_async_init(%struct.TYPE_17__* %120, %struct.TYPE_18__* %122, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %138

128:                                              ; preds = %119
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 6
  %131 = call i32 @uv__handle_unref(%struct.TYPE_18__* %130)
  %132 = load i32, i32* @UV_HANDLE_INTERNAL, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  store i32 0, i32* %2, align 4
  br label %153

138:                                              ; preds = %127
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 5
  %141 = call i32 @uv_mutex_destroy(i32* %140)
  br label %142

142:                                              ; preds = %138, %118
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 4
  %145 = call i32 @uv_rwlock_destroy(i32* %144)
  br label %146

146:                                              ; preds = %142, %111
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = call i32 @uv__signal_loop_cleanup(%struct.TYPE_17__* %147)
  br label %149

149:                                              ; preds = %146, %92
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = call i32 @uv__platform_loop_delete(%struct.TYPE_17__* %150)
  %152 = load i32, i32* %5, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %128, %82
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @heap_init(%struct.heap*) #1

declare dso_local i32 @QUEUE_INIT(i32*) #1

declare dso_local i32 @uv__update_time(%struct.TYPE_17__*) #1

declare dso_local i32 @uv__platform_loop_init(%struct.TYPE_17__*) #1

declare dso_local i32 @uv__signal_global_once_init(...) #1

declare dso_local i32 @uv_signal_init(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @uv__handle_unref(%struct.TYPE_18__*) #1

declare dso_local i32 @uv_rwlock_init(i32*) #1

declare dso_local i32 @uv_mutex_init(i32*) #1

declare dso_local i32 @uv_async_init(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @uv_mutex_destroy(i32*) #1

declare dso_local i32 @uv_rwlock_destroy(i32*) #1

declare dso_local i32 @uv__signal_loop_cleanup(%struct.TYPE_17__*) #1

declare dso_local i32 @uv__platform_loop_delete(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
