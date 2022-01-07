; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_amortization_table = type { i32 }
%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { i64 }

@acounter_off = common dso_local global i64 0, align 8
@TAT = common dso_local global %struct.time_amortization_table* null, align 8
@amortization_counter_types = common dso_local global i32 0, align 4
@cum_access_counters = common dso_local global i64 0, align 8
@CACHE_STAT_MAX_ACOUNTERS = common dso_local global i32 0, align 4
@CORRECLATION_STATS_BUCKETS = common dso_local global i32 0, align 4
@correlaction_stats = common dso_local global i32**** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_incr(%struct.cache_uri* %0, i32 %1) #0 {
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amortization_counter*, align 8
  %7 = alloca %struct.time_amortization_table*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %9 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @acounter_off, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = bitcast i32* %12 to %struct.amortization_counter*
  store %struct.amortization_counter* %13, %struct.amortization_counter** %6, align 8
  %14 = load %struct.time_amortization_table*, %struct.time_amortization_table** @TAT, align 8
  store %struct.time_amortization_table* %14, %struct.time_amortization_table** %7, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @amortization_counter_types, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.time_amortization_table*, %struct.time_amortization_table** %7, align 8
  %21 = load i64, i64* @cum_access_counters, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @amortization_counter_precise_increment(%struct.time_amortization_table* %20, i64 %24, i32 %25)
  %27 = load %struct.time_amortization_table*, %struct.time_amortization_table** %7, align 8
  %28 = getelementptr inbounds %struct.time_amortization_table, %struct.time_amortization_table* %27, i32 1
  store %struct.time_amortization_table* %28, %struct.time_amortization_table** %7, align 8
  %29 = ptrtoint %struct.time_amortization_table* %27 to i32
  %30 = load %struct.amortization_counter*, %struct.amortization_counter** %6, align 8
  %31 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %30, i32 1
  store %struct.amortization_counter* %31, %struct.amortization_counter** %6, align 8
  %32 = ptrtoint %struct.amortization_counter* %30 to i32
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @amortization_counter_increment(i32 %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %40 = call i32 @cache_uri_bucket_reuse(%struct.cache_uri* %39)
  ret void
}

declare dso_local i32 @amortization_counter_precise_increment(%struct.time_amortization_table*, i64, i32) #1

declare dso_local i32 @amortization_counter_increment(i32, i32, i32) #1

declare dso_local i32 @cache_uri_bucket_reuse(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
