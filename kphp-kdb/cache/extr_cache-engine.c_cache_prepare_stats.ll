; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_cache_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_cache_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.connection = type { i32 }
%struct.TYPE_7__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i64 0, align 8
@AM_GET_MEMORY_USAGE_OVERALL = common dso_local global i64 0, align 8
@SB_BINLOG = common dso_local global i32 0, align 4
@SB_INDEX = common dso_local global i32 0, align 4
@set_queries = common dso_local global i32 0, align 4
@set_file_size_queries = common dso_local global i32 0, align 4
@set_new_local_copy_queries = common dso_local global i32 0, align 4
@set_delete_local_copy_queries = common dso_local global i32 0, align 4
@set_yellow_time_remaining_queries = common dso_local global i32 0, align 4
@get_queries = common dso_local global i32 0, align 4
@get_access_queries = common dso_local global i32 0, align 4
@access_misses = common dso_local global double 0.000000e+00, align 8
@get_convert_queries = common dso_local global i32 0, align 4
@get_local_copies_queries = common dso_local global i32 0, align 4
@get_acounter_queries = common dso_local global i32 0, align 4
@get_yellow_time_remaining_queries = common dso_local global i32 0, align 4
@top_stats_queries = common dso_local global i32 0, align 4
@bottom_stats_queries = common dso_local global i32 0, align 4
@get_top_access_stat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"get_top_access\00", align 1
@get_bottom_access_stat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"get_bottom_access\00", align 1
@get_bottom_disk_stat = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"get_bottom_disk\00", align 1
@get_top_disk_stat = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"get_top_disk\00", align 1
@delete_queries = common dso_local global i32 0, align 4
@delete_remote_server_queries = common dso_local global i32 0, align 4
@delete_remote_disk_queries = common dso_local global i32 0, align 4
@cache_id = common dso_local global i32 0, align 4
@uri_hash_prime = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"acounters_init_string\09%s\0A\00", align 1
@acounters_init_string = common dso_local global i32 0, align 4
@amortization_counter_types = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"ac_T_%d\09%.3lfs\0A\00", align 1
@TAT = common dso_local global %struct.TYPE_8__* null, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"optimized_top_access_uncached_acounter_id\09%d\0A\00", align 1
@acounter_uncached_bucket_id = common dso_local global i32 0, align 4
@uries = common dso_local global double 0.000000e+00, align 8
@cached_uries = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"cached_uries_percent\09%.6lf\0A\00", align 1
@deleted_uries = common dso_local global double 0.000000e+00, align 8
@uri_bytes = common dso_local global double 0.000000e+00, align 8
@local_copies_bytes = common dso_local global double 0.000000e+00, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"avg_uri_bytes\09%.3lf\0A\00", align 1
@uri_reallocs = common dso_local global double 0.000000e+00, align 8
@sum_all_cached_files_sizes = common dso_local global double 0.000000e+00, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"cached_uries_known_size_percent\09%.6lf\0A\00", align 1
@cached_uries_knowns_size = common dso_local global double 0.000000e+00, align 8
@access_short_logevents = common dso_local global double 0.000000e+00, align 8
@access_long_logevents = common dso_local global double 0.000000e+00, align 8
@skipped_access_logevents = common dso_local global double 0.000000e+00, align 8
@uri2md5_extra_calls = common dso_local global double 0.000000e+00, align 8
@get_uri_f_calls = common dso_local global double 0.000000e+00, align 8
@uri_cache_hits = common dso_local global double 0.000000e+00, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"uri_cache_hits_percent\09%.6lf\0A\00", align 1
@cron_acounter_update_calls = common dso_local global double 0.000000e+00, align 8
@access_success_counters = common dso_local global i32 0, align 4
@access_miss_counters = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"access_performance%s\0A\00", align 1
@convert_success_counters = common dso_local global i32 0, align 4
@convert_miss_counters = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"convert_performance%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"feature_long_queries\09%d\0A\00", align 1
@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"feature_replay_delete\09%d\0A\00", align 1
@CACHE_FEATURE_REPLAY_DELETE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"feature_detailed_server_stats\09%d\0A\00", align 1
@CACHE_FEATURE_DETAILED_SERVER_STATS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"feature_fast_bottom_access\09%d\0A\00", align 1
@CACHE_FEATURE_FAST_BOTTOM_ACCESS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"feature_access_queries\09%d\0A\00", align 1
@CACHE_FEATURE_ACCESS_QUERIES = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"version\09%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = load i32, i32* @stats_buff, align 4
  %8 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %9 = call i32 @sb_prepare(%struct.TYPE_7__* %4, %struct.connection* %6, i32 %7, i32 %8)
  %10 = load i64, i64* @AM_GET_MEMORY_USAGE_SELF, align 8
  %11 = load i64, i64* @AM_GET_MEMORY_USAGE_OVERALL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @sb_memory(%struct.TYPE_7__* %4, i64 %12)
  %14 = load i32, i32* @SB_BINLOG, align 4
  %15 = load i32, i32* @SB_INDEX, align 4
  %16 = load i32, i32* @set_queries, align 4
  %17 = call i32 @SB_PRINT_QUERIES(i32 %16)
  %18 = load i32, i32* @set_file_size_queries, align 4
  %19 = call i32 @SB_PRINT_QUERIES(i32 %18)
  %20 = load i32, i32* @set_new_local_copy_queries, align 4
  %21 = call i32 @SB_PRINT_QUERIES(i32 %20)
  %22 = load i32, i32* @set_delete_local_copy_queries, align 4
  %23 = call i32 @SB_PRINT_QUERIES(i32 %22)
  %24 = load i32, i32* @set_yellow_time_remaining_queries, align 4
  %25 = call i32 @SB_PRINT_QUERIES(i32 %24)
  %26 = load i32, i32* @get_queries, align 4
  %27 = call i32 @SB_PRINT_QUERIES(i32 %26)
  %28 = load i32, i32* @get_access_queries, align 4
  %29 = call i32 @SB_PRINT_QUERIES(i32 %28)
  %30 = load double, double* @access_misses, align 8
  %31 = call i32 @SB_PRINT_I64(double %30)
  %32 = load i32, i32* @get_convert_queries, align 4
  %33 = call i32 @SB_PRINT_QUERIES(i32 %32)
  %34 = load i32, i32* @get_local_copies_queries, align 4
  %35 = call i32 @SB_PRINT_QUERIES(i32 %34)
  %36 = load i32, i32* @get_acounter_queries, align 4
  %37 = call i32 @SB_PRINT_QUERIES(i32 %36)
  %38 = load i32, i32* @get_yellow_time_remaining_queries, align 4
  %39 = call i32 @SB_PRINT_QUERIES(i32 %38)
  %40 = load i32, i32* @top_stats_queries, align 4
  %41 = call i32 @SB_PRINT_QUERIES(i32 %40)
  %42 = load i32, i32* @bottom_stats_queries, align 4
  %43 = call i32 @SB_PRINT_QUERIES(i32 %42)
  %44 = call i32 @sb_print_stat(%struct.TYPE_7__* %4, i32* @get_top_access_stat, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @sb_print_stat(%struct.TYPE_7__* %4, i32* @get_bottom_access_stat, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @sb_print_stat(%struct.TYPE_7__* %4, i32* @get_bottom_disk_stat, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @sb_print_stat(%struct.TYPE_7__* %4, i32* @get_top_disk_stat, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @delete_queries, align 4
  %49 = call i32 @SB_PRINT_QUERIES(i32 %48)
  %50 = load i32, i32* @delete_remote_server_queries, align 4
  %51 = call i32 @SB_PRINT_QUERIES(i32 %50)
  %52 = load i32, i32* @delete_remote_disk_queries, align 4
  %53 = call i32 @SB_PRINT_QUERIES(i32 %52)
  %54 = load i32, i32* @cache_id, align 4
  %55 = call i32 @SB_PRINT_I32(i32 %54)
  %56 = load i32, i32* @uri_hash_prime, align 4
  %57 = call i32 @SB_PRINT_I32(i32 %56)
  %58 = load i32, i32* @acounters_init_string, align 4
  %59 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @amortization_counter_types, align 4
  %61 = call i32 @SB_PRINT_I32(i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %75, %1
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @amortization_counter_types, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TAT, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load i32, i32* @acounter_uncached_bucket_id, align 4
  %80 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load double, double* @uries, align 8
  %82 = call i32 @SB_PRINT_I64(double %81)
  %83 = load double, double* @cached_uries, align 8
  %84 = call i32 @SB_PRINT_I64(double %83)
  %85 = load double, double* @cached_uries, align 8
  %86 = fmul double %85, 1.000000e+02
  %87 = load double, double* @uries, align 8
  %88 = call i32 @safe_div(double %86, double %87)
  %89 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = load double, double* @deleted_uries, align 8
  %91 = call i32 @SB_PRINT_I64(double %90)
  %92 = load double, double* @uri_bytes, align 8
  %93 = call i32 @SB_PRINT_I64(double %92)
  %94 = load double, double* @local_copies_bytes, align 8
  %95 = call i32 @SB_PRINT_I64(double %94)
  %96 = load double, double* @uri_bytes, align 8
  %97 = load double, double* @uries, align 8
  %98 = call i32 @safe_div(double %96, double %97)
  %99 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load double, double* @uri_reallocs, align 8
  %101 = call i32 @SB_PRINT_I64(double %100)
  %102 = load double, double* @sum_all_cached_files_sizes, align 8
  %103 = call i32 @SB_PRINT_I64(double %102)
  %104 = load double, double* @cached_uries_knowns_size, align 8
  %105 = fmul double %104, 1.000000e+02
  %106 = load double, double* @cached_uries, align 8
  %107 = call i32 @safe_div(double %105, double %106)
  %108 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  %109 = load double, double* @access_short_logevents, align 8
  %110 = call i32 @SB_PRINT_I64(double %109)
  %111 = load double, double* @access_long_logevents, align 8
  %112 = call i32 @SB_PRINT_I64(double %111)
  %113 = load double, double* @skipped_access_logevents, align 8
  %114 = call i32 @SB_PRINT_I64(double %113)
  %115 = load double, double* @uri2md5_extra_calls, align 8
  %116 = call i32 @SB_PRINT_I64(double %115)
  %117 = load double, double* @get_uri_f_calls, align 8
  %118 = call i32 @SB_PRINT_I64(double %117)
  %119 = load double, double* @uri_cache_hits, align 8
  %120 = call i32 @SB_PRINT_I64(double %119)
  %121 = load double, double* @uri_cache_hits, align 8
  %122 = fmul double %121, 1.000000e+02
  %123 = load double, double* @get_uri_f_calls, align 8
  %124 = call i32 @safe_div(double %122, double %123)
  %125 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %124)
  %126 = load double, double* @cron_acounter_update_calls, align 8
  %127 = call i32 @SB_PRINT_I64(double %126)
  %128 = call i8* @alloca(i32 1024)
  store i8* %128, i8** %5, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* @access_success_counters, align 4
  %131 = load i32, i32* @access_miss_counters, align 4
  %132 = call i32 @cache_stats_perf(i8* %129, i32 1024, i32 %130, i32 %131)
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %133)
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* @convert_success_counters, align 4
  %137 = load i32, i32* @convert_miss_counters, align 4
  %138 = call i32 @cache_stats_perf(i8* %135, i32 1024, i32 %136, i32 %137)
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* @cache_features_mask, align 4
  %142 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @cache_features_mask, align 4
  %149 = load i32, i32* @CACHE_FEATURE_REPLAY_DELETE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @cache_features_mask, align 4
  %156 = load i32, i32* @CACHE_FEATURE_DETAILED_SERVER_STATS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @cache_features_mask, align 4
  %163 = load i32, i32* @CACHE_FEATURE_FAST_BOTTOM_ACCESS, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 1, i32 0
  %168 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @cache_features_mask, align 4
  %170 = load i32, i32* @CACHE_FEATURE_ACCESS_QUERIES, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 1, i32 0
  %175 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* @FullVersionStr, align 4
  %177 = call i32 (%struct.TYPE_7__*, i8*, ...) @sb_printf(%struct.TYPE_7__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  ret i32 %179
}

declare dso_local i32 @sb_prepare(%struct.TYPE_7__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @SB_PRINT_QUERIES(i32) #1

declare dso_local i32 @SB_PRINT_I64(double) #1

declare dso_local i32 @sb_print_stat(%struct.TYPE_7__*, i32*, i8*) #1

declare dso_local i32 @SB_PRINT_I32(i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @safe_div(double, double) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @cache_stats_perf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
