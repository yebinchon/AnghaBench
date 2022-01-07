; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_flush_view_counters.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_flush_view_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i32, %struct.counter* }
%struct.lev_stats_views_ext = type { i32 }
%struct.lev_stats_views_ext64 = type { i32, i32 }

@counters_commit_head = common dso_local global %struct.counter* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"flush_view_counters()\0A\00", align 1
@LEV_STATS_VIEWS = common dso_local global i64 0, align 8
@LEV_STATS_VIEWS_EXT = common dso_local global i64 0, align 8
@LEV_STATS_VIEWS_64 = common dso_local global i64 0, align 8
@LEV_STATS_VIEWS_EXT_64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_view_counters() #0 {
  %1 = alloca %struct.counter*, align 8
  %2 = alloca %struct.counter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_stats_views_ext*, align 8
  %5 = alloca %struct.lev_stats_views_ext64*, align 8
  %6 = load %struct.counter*, %struct.counter** @counters_commit_head, align 8
  store %struct.counter* %6, %struct.counter** %1, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  store %struct.counter* null, %struct.counter** @counters_commit_head, align 8
  br label %13

13:                                               ; preds = %105, %12
  %14 = load %struct.counter*, %struct.counter** %1, align 8
  %15 = icmp ne %struct.counter* %14, null
  br i1 %15, label %16, label %109

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = icmp sle i32 %18, 1000000
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.counter*, %struct.counter** %1, align 8
  %23 = getelementptr inbounds %struct.counter, %struct.counter* %22, i32 0, i32 2
  %24 = load %struct.counter*, %struct.counter** %23, align 8
  store %struct.counter* %24, %struct.counter** %2, align 8
  %25 = load %struct.counter*, %struct.counter** %1, align 8
  %26 = getelementptr inbounds %struct.counter, %struct.counter* %25, i32 0, i32 2
  store %struct.counter* null, %struct.counter** %26, align 8
  %27 = load %struct.counter*, %struct.counter** %1, align 8
  %28 = getelementptr inbounds %struct.counter, %struct.counter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.counter*, %struct.counter** %1, align 8
  %34 = getelementptr inbounds %struct.counter, %struct.counter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.counter*, %struct.counter** %1, align 8
  %37 = getelementptr inbounds %struct.counter, %struct.counter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %16
  %41 = load %struct.counter*, %struct.counter** %1, align 8
  %42 = getelementptr inbounds %struct.counter, %struct.counter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 256
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i64, i64* @LEV_STATS_VIEWS, align 8
  %47 = load %struct.counter*, %struct.counter** %1, align 8
  %48 = getelementptr inbounds %struct.counter, %struct.counter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = load %struct.counter*, %struct.counter** %1, align 8
  %53 = getelementptr inbounds %struct.counter, %struct.counter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @alloc_log_event(i64 %51, i32 8, i32 %54)
  %56 = bitcast i8* %55 to %struct.lev_stats_views_ext*
  store %struct.lev_stats_views_ext* %56, %struct.lev_stats_views_ext** %4, align 8
  br label %69

57:                                               ; preds = %40
  %58 = load i64, i64* @LEV_STATS_VIEWS_EXT, align 8
  %59 = load %struct.counter*, %struct.counter** %1, align 8
  %60 = getelementptr inbounds %struct.counter, %struct.counter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @alloc_log_event(i64 %58, i32 12, i32 %61)
  %63 = bitcast i8* %62 to %struct.lev_stats_views_ext*
  store %struct.lev_stats_views_ext* %63, %struct.lev_stats_views_ext** %4, align 8
  %64 = load %struct.counter*, %struct.counter** %1, align 8
  %65 = getelementptr inbounds %struct.counter, %struct.counter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.lev_stats_views_ext*, %struct.lev_stats_views_ext** %4, align 8
  %68 = getelementptr inbounds %struct.lev_stats_views_ext, %struct.lev_stats_views_ext* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %57, %45
  br label %105

70:                                               ; preds = %16
  %71 = load %struct.counter*, %struct.counter** %1, align 8
  %72 = getelementptr inbounds %struct.counter, %struct.counter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i64, i64* @LEV_STATS_VIEWS_64, align 8
  %77 = load %struct.counter*, %struct.counter** %1, align 8
  %78 = getelementptr inbounds %struct.counter, %struct.counter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = load %struct.counter*, %struct.counter** %1, align 8
  %83 = getelementptr inbounds %struct.counter, %struct.counter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @alloc_log_event(i64 %81, i32 12, i32 %84)
  %86 = bitcast i8* %85 to %struct.lev_stats_views_ext64*
  store %struct.lev_stats_views_ext64* %86, %struct.lev_stats_views_ext64** %5, align 8
  br label %99

87:                                               ; preds = %70
  %88 = load i64, i64* @LEV_STATS_VIEWS_EXT_64, align 8
  %89 = load %struct.counter*, %struct.counter** %1, align 8
  %90 = getelementptr inbounds %struct.counter, %struct.counter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @alloc_log_event(i64 %88, i32 16, i32 %91)
  %93 = bitcast i8* %92 to %struct.lev_stats_views_ext64*
  store %struct.lev_stats_views_ext64* %93, %struct.lev_stats_views_ext64** %5, align 8
  %94 = load %struct.counter*, %struct.counter** %1, align 8
  %95 = getelementptr inbounds %struct.counter, %struct.counter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.lev_stats_views_ext64*, %struct.lev_stats_views_ext64** %5, align 8
  %98 = getelementptr inbounds %struct.lev_stats_views_ext64, %struct.lev_stats_views_ext64* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %87, %75
  %100 = load %struct.counter*, %struct.counter** %1, align 8
  %101 = getelementptr inbounds %struct.counter, %struct.counter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.lev_stats_views_ext64*, %struct.lev_stats_views_ext64** %5, align 8
  %104 = getelementptr inbounds %struct.lev_stats_views_ext64, %struct.lev_stats_views_ext64* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %69
  %106 = load %struct.counter*, %struct.counter** %1, align 8
  %107 = getelementptr inbounds %struct.counter, %struct.counter* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.counter*, %struct.counter** %2, align 8
  store %struct.counter* %108, %struct.counter** %1, align 8
  br label %13

109:                                              ; preds = %13
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
