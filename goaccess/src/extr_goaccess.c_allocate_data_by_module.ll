; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_allocate_data_by_module.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_allocate_data_by_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }

@dash = common dso_local global %struct.TYPE_11__* null, align 8
@holder = common dso_local global %struct.TYPE_10__* null, align 8
@gscroll = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@DASH_EXPANDED = common dso_local global i64 0, align 8
@DASH_COLLAPSED = common dso_local global i64 0, align 8
@gdns_thread = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @allocate_data_by_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_data_by_module(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @get_max_choices()
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @module_to_head(i64 %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 6
  store i32 %9, i32* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @module_to_desc(i64 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 5
  store i32 %17, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @holder, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gscroll, i32 0, i32 1), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %2
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gscroll, i32 0, i32 0), align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  br label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @holder, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %41, %39
  %48 = phi i32 [ %40, %39 ], [ %46, %41 ]
  store i32 %48, i32* %5, align 4
  br label %67

49:                                               ; preds = %31, %2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @holder, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @holder, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  br label %65

65:                                               ; preds = %59, %57
  %66 = phi i32 [ %58, %57 ], [ %64, %59 ]
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %47
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %68, i32* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @holder, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  store i32 %79, i32* %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gscroll, i32 0, i32 1), align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %67
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gscroll, i32 0, i32 0), align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i64, i64* @DASH_EXPANDED, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i64, i64* %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i64 %105, i64* %111, align 8
  br label %120

112:                                              ; preds = %100, %67
  %113 = load i64, i64* @DASH_COLLAPSED, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i64, i64* %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i64 %113, i64* %119, align 8
  br label %120

120:                                              ; preds = %112, %104
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i64, i64* %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  %134 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdns_thread, i32 0, i32 0))
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @holder, align 8
  %136 = load i64, i64* %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %136
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dash, align 8
  %139 = load i64, i64* %3, align 8
  %140 = call i32 @load_data_to_dash(%struct.TYPE_10__* %137, %struct.TYPE_11__* %138, i64 %139, %struct.TYPE_12__* @gscroll)
  %141 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gdns_thread, i32 0, i32 0))
  ret void
}

declare dso_local i32 @get_max_choices(...) #1

declare dso_local i32 @module_to_head(i64) #1

declare dso_local i32 @module_to_desc(i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @load_data_to_dash(%struct.TYPE_10__*, %struct.TYPE_11__*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
