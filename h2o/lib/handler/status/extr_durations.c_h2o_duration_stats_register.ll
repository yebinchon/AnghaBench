; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/status/extr_durations.c_h2o_duration_stats_register.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/status/extr_durations.c_h2o_duration_stats_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__**, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i64, i8** }
%struct.TYPE_12__ = type { i32 }

@durations_logger = common dso_local global %struct.TYPE_15__* null, align 8
@stat_access = common dso_local global i32 0, align 4
@on_context_init = common dso_local global i32 0, align 4
@on_context_dispose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_duration_stats_register(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = call %struct.TYPE_15__* @h2o_mem_alloc(i32 24)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** @durations_logger, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = call i32 @memset(%struct.TYPE_15__* %10, i32 0, i32 24)
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = sext i32 %14 to i64
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* @stat_access, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @on_context_init, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @on_context_dispose, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %102, %1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = icmp ne %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %105

37:                                               ; preds = %28
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %40, i64 %42
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %6, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %98, %37
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %94, %52
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %54, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %53
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %8, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  %81 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_18__* %75, i64 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = bitcast %struct.TYPE_15__* %82 to i8*
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = getelementptr inbounds i8*, i8** %87, i64 %91
  store i8* %83, i8** %93, align 8
  br label %94

94:                                               ; preds = %66
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %53

97:                                               ; preds = %53
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %45

101:                                              ; preds = %45
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %28

105:                                              ; preds = %28
  ret void
}

declare dso_local %struct.TYPE_15__* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
