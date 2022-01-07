; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_update_history_persistent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_update_history_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.incore_persistent_history* }
%struct.incore_persistent_history = type { i32, i32, i32* }

@persistent_history_enabled = common dso_local global i32 0, align 4
@MIN_PERSISTENT_HISTORY_EVENTS = common dso_local global i32 0, align 4
@incore_persistent_history_bytes = common dso_local global i32 0, align 4
@incore_persistent_history_lists = common dso_local global i32 0, align 4
@incore_persistent_history_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32)* @update_history_persistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_history_persistent(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.incore_persistent_history*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp ule i32 %17, 5
  br label %19

19:                                               ; preds = %16, %13, %4
  %20 = phi i1 [ false, %13 ], [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* @persistent_history_enabled, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %121

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %28, align 8
  store %struct.incore_persistent_history* %29, %struct.incore_persistent_history** %9, align 8
  %30 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %31 = icmp ne %struct.incore_persistent_history* %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @MIN_PERSISTENT_HISTORY_EVENTS, align 4
  %34 = mul nsw i32 8, %33
  %35 = sext i32 %34 to i64
  %36 = add i64 16, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.incore_persistent_history* @malloc(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store %struct.incore_persistent_history* %38, %struct.incore_persistent_history** %40, align 8
  store %struct.incore_persistent_history* %38, %struct.incore_persistent_history** %9, align 8
  %41 = load i32, i32* @MIN_PERSISTENT_HISTORY_EVENTS, align 4
  %42 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %43 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %45 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %47 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = add i64 16, %50
  %52 = load i32, i32* @incore_persistent_history_bytes, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* @incore_persistent_history_bytes, align 4
  %56 = load i32, i32* @incore_persistent_history_lists, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @incore_persistent_history_lists, align 4
  br label %89

58:                                               ; preds = %26
  %59 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %60 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %63 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %58
  %67 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %68 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %69 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 16, %70
  %72 = sext i32 %71 to i64
  %73 = add i64 16, %72
  %74 = trunc i64 %73 to i32
  %75 = call %struct.incore_persistent_history* @realloc(%struct.incore_persistent_history* %67, i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store %struct.incore_persistent_history* %75, %struct.incore_persistent_history** %77, align 8
  store %struct.incore_persistent_history* %75, %struct.incore_persistent_history** %9, align 8
  %78 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %79 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %80, 8
  %82 = load i32, i32* @incore_persistent_history_bytes, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* @incore_persistent_history_bytes, align 4
  %84 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %85 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 2
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %66, %58
  br label %89

89:                                               ; preds = %88, %32
  %90 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %91 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.incore_persistent_history*, %struct.incore_persistent_history** %9, align 8
  %94 = getelementptr inbounds %struct.incore_persistent_history, %struct.incore_persistent_history* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = mul nsw i32 %95, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  store i32* %99, i32** %10, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, 65535
  %105 = load i32, i32* %8, align 4
  %106 = shl i32 %105, 24
  %107 = or i32 %104, %106
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @incore_persistent_history_events, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @incore_persistent_history_events, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = call i64 @USER_PCONN(%struct.TYPE_5__* %115)
  %117 = icmp ne i64 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %89
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = call i32 @process_user_persistent_query_queue2(%struct.TYPE_5__* %119)
  br label %121

121:                                              ; preds = %25, %118, %89
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.incore_persistent_history* @malloc(i32) #1

declare dso_local %struct.incore_persistent_history* @realloc(%struct.incore_persistent_history*, i32) #1

declare dso_local i64 @USER_PCONN(%struct.TYPE_5__*) #1

declare dso_local i32 @process_user_persistent_query_queue2(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
