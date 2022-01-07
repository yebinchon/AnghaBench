; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64, i64, i32 }

@now = common dso_local global i32 0, align 4
@print_uri = common dso_local global i32 0, align 4
@cgsl_order_top = common dso_local global i32 0, align 4
@cache_init = common dso_local global i32 0, align 4
@download = common dso_local global i32 0, align 4
@erased = common dso_local global i32 0, align 4
@cache_hits = common dso_local global i32 0, align 4
@simulation_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cache_hits_bytes-download_bytes\09%lld(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cache_hits_bytes/download_bytes\09%.6lf\0A\00", align 1
@cache_misses = common dso_local global i32 0, align 4
@priority_lists_requests = common dso_local global i32 0, align 4
@priority_lists_requests_after_list_ending = common dso_local global i32 0, align 4
@required_files_with_unknown_size = common dso_local global i32 0, align 4
@with_known_size_files = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"average_known_size\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"max_known_size\09%s\0A\00", align 1
@max_retrieved_files_between_two_priority_requests = common dso_local global i32 0, align 4
@max_erased_files_between_two_priority_requests = common dso_local global i32 0, align 4
@max_priority_lists_request_time = common dso_local global i32 0, align 4
@resource_usage_time = common dso_local global i32 0, align 4
@max_uries_in_one_bucket = common dso_local global i32 0, align 4
@uries_last_hour_access = common dso_local global i32 0, align 4
@uries_last_day_access = common dso_local global i32 0, align 4
@uries_last_week_access = common dso_local global i32 0, align 4
@uries_last_month_access = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @time(i32* null)
  store i32 %3, i32* @now, align 4
  %4 = load i32, i32* @print_uri, align 4
  %5 = load i32, i32* @cgsl_order_top, align 4
  %6 = call i32 @cache_all_uri_foreach(i32 %4, i32 %5)
  %7 = load i32, i32* @cache_init, align 4
  %8 = call i32 @PRINT_STAT_FILE(i32 %7)
  %9 = load i32, i32* @download, align 4
  %10 = call i32 @PRINT_STAT_FILE(i32 %9)
  %11 = load i32, i32* @erased, align 4
  %12 = call i32 @PRINT_STAT_FILE(i32 %11)
  %13 = load i32, i32* @cache_hits, align 4
  %14 = call i32 @PRINT_STAT_FILE(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 1), align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %1, align 8
  %18 = load i32, i32* @stderr, align 4
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = call i8* @human_readable_size(i64 %20)
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %19, i8* %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 0), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 1), align 8
  %26 = call i8* @safe_div(i64 %24, i64 %25)
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @cache_misses, align 4
  %29 = call i32 @PRINT_STAT_FILE(i32 %28)
  %30 = load i32, i32* @priority_lists_requests, align 4
  %31 = call i32 @PRINT_STAT_I64(i32 %30)
  %32 = load i32, i32* @priority_lists_requests_after_list_ending, align 4
  %33 = call i32 @PRINT_STAT_I64(i32 %32)
  %34 = load i32, i32* @required_files_with_unknown_size, align 4
  %35 = call i32 @PRINT_STAT_I64(i32 %34)
  %36 = load i32, i32* @with_known_size_files, align 4
  %37 = call i32 @PRINT_STAT_I64(i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 2), align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %0
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 3), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 2), align 8
  %43 = sext i32 %42 to i64
  %44 = sdiv i64 %41, %43
  br label %46

45:                                               ; preds = %0
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i64 [ %44, %40 ], [ 0, %45 ]
  store i64 %47, i64* %2, align 8
  %48 = load i32, i32* @stderr, align 4
  %49 = load i64, i64* %2, align 8
  %50 = call i8* @human_readable_size(i64 %49)
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 4), align 8
  %54 = call i8* @human_readable_size(i64 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @max_retrieved_files_between_two_priority_requests, align 4
  %57 = call i32 @PRINT_STAT_I32(i32 %56)
  %58 = load i32, i32* @max_erased_files_between_two_priority_requests, align 4
  %59 = call i32 @PRINT_STAT_I32(i32 %58)
  %60 = load i32, i32* @max_priority_lists_request_time, align 4
  %61 = call i32 @PRINT_STAT_TIME(i32 %60)
  %62 = call i32 (...) @get_rusage_time()
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @simulation_stats, i32 0, i32 5), align 8
  %63 = load i32, i32* @resource_usage_time, align 4
  %64 = call i32 @PRINT_STAT_TIME(i32 %63)
  %65 = load i32, i32* @max_uries_in_one_bucket, align 4
  %66 = call i32 @PRINT_STAT_I32(i32 %65)
  %67 = load i32, i32* @uries_last_hour_access, align 4
  %68 = call i32 @PRINT_STAT_I32(i32 %67)
  %69 = load i32, i32* @uries_last_day_access, align 4
  %70 = call i32 @PRINT_STAT_I32(i32 %69)
  %71 = load i32, i32* @uries_last_week_access, align 4
  %72 = call i32 @PRINT_STAT_I32(i32 %71)
  %73 = load i32, i32* @uries_last_month_access, align 4
  %74 = call i32 @PRINT_STAT_I32(i32 %73)
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fflush(i32 %75)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @cache_all_uri_foreach(i32, i32) #1

declare dso_local i32 @PRINT_STAT_FILE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @human_readable_size(i64) #1

declare dso_local i8* @safe_div(i64, i64) #1

declare dso_local i32 @PRINT_STAT_I64(i32) #1

declare dso_local i32 @PRINT_STAT_I32(i32) #1

declare dso_local i32 @PRINT_STAT_TIME(i32) #1

declare dso_local i32 @get_rusage_time(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
