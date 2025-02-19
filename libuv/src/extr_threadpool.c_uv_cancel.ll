; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv_cancel.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_threadpool.c_uv_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.uv__work = type { i32 }
%struct.TYPE_14__ = type { %struct.uv__work, i32* }
%struct.TYPE_13__ = type { %struct.uv__work, i32* }
%struct.TYPE_12__ = type { %struct.uv__work, i32* }
%struct.TYPE_11__ = type { %struct.uv__work, i32* }
%struct.TYPE_9__ = type { %struct.uv__work, i32* }

@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cancel(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.uv__work*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 132, label %9
    i32 131, label %17
    i32 130, label %25
    i32 129, label %33
    i32 128, label %41
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = bitcast %struct.TYPE_10__* %10 to %struct.TYPE_14__*
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = bitcast %struct.TYPE_10__* %14 to %struct.TYPE_14__*
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store %struct.uv__work* %16, %struct.uv__work** %4, align 8
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = bitcast %struct.TYPE_10__* %18 to %struct.TYPE_13__*
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = bitcast %struct.TYPE_10__* %22 to %struct.TYPE_13__*
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store %struct.uv__work* %24, %struct.uv__work** %4, align 8
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = bitcast %struct.TYPE_10__* %26 to %struct.TYPE_12__*
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = bitcast %struct.TYPE_10__* %30 to %struct.TYPE_12__*
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store %struct.uv__work* %32, %struct.uv__work** %4, align 8
  br label %51

33:                                               ; preds = %1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = bitcast %struct.TYPE_10__* %34 to %struct.TYPE_11__*
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = bitcast %struct.TYPE_10__* %38 to %struct.TYPE_11__*
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store %struct.uv__work* %40, %struct.uv__work** %4, align 8
  br label %51

41:                                               ; preds = %1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = bitcast %struct.TYPE_10__* %42 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %5, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = bitcast %struct.TYPE_10__* %46 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store %struct.uv__work* %48, %struct.uv__work** %4, align 8
  br label %51

49:                                               ; preds = %1
  %50 = load i32, i32* @UV_EINVAL, align 4
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %41, %33, %25, %17, %9
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = load %struct.uv__work*, %struct.uv__work** %4, align 8
  %55 = call i32 @uv__work_cancel(i32* %52, %struct.TYPE_10__* %53, %struct.uv__work* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %49
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @uv__work_cancel(i32*, %struct.TYPE_10__*, %struct.uv__work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
