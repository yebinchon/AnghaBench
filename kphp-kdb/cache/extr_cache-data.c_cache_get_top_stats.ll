; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_top_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_top_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.cache_uri** }
%struct.cache_uri = type { i32* }
%struct.cache_top_stats = type { i32, i32, i64, double, i32 }
%struct.amortization_counter = type { i64 }
%struct.TYPE_9__ = type { i32 }

@heap_acounter_off = common dso_local global i64 0, align 8
@TAT = common dso_local global i32* null, align 8
@heap_acounter_id = common dso_local global i64 0, align 8
@cum_access_counters = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"selection_size\09%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"total_files\09%lld\0A\00", align 1
@uries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"selection_relative_size\09%.10lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"known_size_files\09%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"sum_acounter\09%.10lg\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"relative_sum_acounter\09%.10lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"sum_filesize\09%lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"weighted_sum_filesize\09%.10lg\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_get_top_stats(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca %struct.cache_top_stats, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cache_uri*, align 8
  %16 = alloca %struct.amortization_counter*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = call i32 @memset(%struct.cache_top_stats* %13, i32 0, i32 32)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @cache_top_fill_heap(%struct.TYPE_8__* %12, i32 %20, i32 %21, i32 %22, i32 0, i32 0, i32 0)
  %24 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %134

29:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %30

30:                                               ; preds = %79, %29
  %31 = load i32, i32* %14, align 4
  %32 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %37 = load %struct.cache_uri**, %struct.cache_uri*** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %37, i64 %39
  %41 = load %struct.cache_uri*, %struct.cache_uri** %40, align 8
  store %struct.cache_uri* %41, %struct.cache_uri** %15, align 8
  %42 = load %struct.cache_uri*, %struct.cache_uri** %15, align 8
  %43 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @heap_acounter_off, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = bitcast i32* %46 to %struct.amortization_counter*
  store %struct.amortization_counter* %47, %struct.amortization_counter** %16, align 8
  %48 = load %struct.cache_uri*, %struct.cache_uri** %15, align 8
  %49 = call i64 @cache_uri_get_size(%struct.cache_uri* %48)
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %56
  store i64 %59, i64* %57, align 8
  %60 = load %struct.amortization_counter*, %struct.amortization_counter** %16, align 8
  %61 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = load i64, i64* %17, align 8
  %65 = sitofp i64 %64 to double
  %66 = fmul double %63, %65
  %67 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 3
  %68 = load double, double* %67, align 8
  %69 = fadd double %68, %66
  store double %69, double* %67, align 8
  br label %70

70:                                               ; preds = %52, %35
  %71 = load %struct.amortization_counter*, %struct.amortization_counter** %16, align 8
  %72 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %73
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %30

82:                                               ; preds = %30
  %83 = load i32*, i32** @TAT, align 8
  %84 = load i64, i64* @heap_acounter_id, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cum_access_counters, align 8
  %87 = load i64, i64* @heap_acounter_id, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %87
  %89 = call i32 @amortization_counter_precise_increment(i32* %85, %struct.TYPE_10__* %88, i32 0)
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @cache_bclear(%struct.TYPE_9__* %18, i8* %90, i32 %91)
  %93 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @uries, align 4
  %97 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @uries, align 4
  %101 = call i32 @safe_div(i32 %99, i32 %100)
  %102 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cum_access_counters, align 8
  %112 = load i64, i64* @heap_acounter_id, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @safe_div(i32 %110, i32 %115)
  %117 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = getelementptr inbounds %struct.cache_top_stats, %struct.cache_top_stats* %13, i32 0, i32 3
  %123 = load double, double* %122, align 8
  %124 = fptosi double %123 to i32
  %125 = call i32 @cache_bprintf(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %82
  store i32 -1, i32* %6, align 4
  br label %134

131:                                              ; preds = %82
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %131, %130, %28
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @memset(%struct.cache_top_stats*, i32, i32) #1

declare dso_local i32 @cache_top_fill_heap(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cache_uri_get_size(%struct.cache_uri*) #1

declare dso_local i32 @amortization_counter_precise_increment(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @cache_bclear(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @cache_bprintf(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @safe_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
