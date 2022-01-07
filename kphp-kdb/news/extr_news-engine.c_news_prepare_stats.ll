; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_news_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_news_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32 }

@COMM_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"comments\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"user_group_mode\09%d\0A\00", align 1
@ug_mode = common dso_local global i32 0, align 4
@SB_BINLOG = common dso_local global i32 0, align 4
@SB_INDEX = common dso_local global i32 0, align 4
@delete_queries = common dso_local global i32 0, align 4
@undelete_queries = common dso_local global i32 0, align 4
@update_queries = common dso_local global i32 0, align 4
@minor_update_queries = common dso_local global i32 0, align 4
@RECOMMEND_MODE = common dso_local global i64 0, align 8
@get_raw_recommend_updates_queries = common dso_local global i32 0, align 4
@get_max_raw_recommend_updates_queries = common dso_local global i32 0, align 4
@skipped_set_recommend_updates_queries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"raw_recommend_updates_avg_returned_records\09%.3lf\0A\00", align 1
@tot_raw_recommend_updates_records = common dso_local global i32 0, align 4
@max_news_days = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [234 x i8] c"memory_users\09%d\0Amax_uid\09%d\0Atotal_items\09%d\0Atotal_places\09%d\0Atotal_comments\09%d\0Aloadavg_last_minute\09%.6f\0Agarbage_collection_uptime\09%d\0A%s_removed_in_process_new\09%lld\0A%s_removed_in_prepare_updates\09%lld\0A%s_removed_by_garbage_collector\09%lld\0A\00", align 1
@tot_users = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@items_kept = common dso_local global i32 0, align 4
@tot_places = common dso_local global i32 0, align 4
@comments_kept = common dso_local global i32 0, align 4
@loadavg_last_minute = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@last_collect_garbage_time = common dso_local global i64 0, align 8
@items_removed_in_process_new = common dso_local global i32 0, align 4
@items_removed_in_prepare_updates = common dso_local global i32 0, align 4
@garbage_objects_collected = common dso_local global i32 0, align 4
@dups_removed_in_process_raw_updates = common dso_local global i32 0, align 4
@dups_users_removed_from_urlist = common dso_local global i32 0, align 4
@garbage_users_collected = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [455 x i8] c"small_users_in_index\09%d\0Alarge_users_in_index\09%d\0Ausers_with_new_bookmarks\09%d\0Anew_bookmarks\09%d\0Atot_aio_queries\09%lld\0Aactive_aio_queries\09%lld\0Aexpired_aio_queries\09%lld\0Aavg_aio_query_time\09%.6f\0Ametafiles_load_errors\09%d\0Ametafiles_load_success\09%d\0Ametafiles_in_memory\09%d\0Ametafiles_unloaded\09%d\0Atotal_aio_loaded_bytes\09%lld\0Aallocated_metafiles_size\09%lld\0Amax_allocated_metafiles_size\09%lld\0Ametafiles_cache_miss\09%lld\0Ametafiles_cache_ok\09%lld\0Ametafiles_cache_loading\09%lld\0A\00", align 1
@small_users_number = common dso_local global i32 0, align 4
@large_users_number = common dso_local global i32 0, align 4
@new_users_number = common dso_local global i64 0, align 8
@bookmarks_ptr = common dso_local global i64 0, align 8
@tot_aio_queries = common dso_local global i32 0, align 4
@active_aio_queries = common dso_local global i32 0, align 4
@expired_aio_queries = common dso_local global i32 0, align 4
@total_aio_time = common dso_local global i32 0, align 4
@metafiles_load_errors = common dso_local global i32 0, align 4
@metafiles_load_success = common dso_local global i32 0, align 4
@metafiles_loaded = common dso_local global i32 0, align 4
@metafiles_unloaded = common dso_local global i32 0, align 4
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4
@allocated_metafiles_size = common dso_local global i32 0, align 4
@max_allocated_metafiles_size = common dso_local global i32 0, align 4
@metafiles_cache_miss = common dso_local global i32 0, align 4
@metafiles_cache_ok = common dso_local global i32 0, align 4
@metafiles_cache_loading = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"version\09%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @news_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %5 = load i64, i64* @COMM_MODE, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = load i32, i32* @stats_buff, align 4
  %11 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %12 = call i32 @sb_prepare(%struct.TYPE_5__* %4, %struct.connection* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %14 = call i32 @sb_memory(%struct.TYPE_5__* %4, i32 %13)
  %15 = load i32, i32* @ug_mode, align 4
  %16 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SB_BINLOG, align 4
  %18 = load i32, i32* @SB_INDEX, align 4
  %19 = load i32, i32* @delete_queries, align 4
  %20 = call i32 @SB_PRINT_QUERIES(i32 %19)
  %21 = load i32, i32* @undelete_queries, align 4
  %22 = call i32 @SB_PRINT_QUERIES(i32 %21)
  %23 = load i32, i32* @update_queries, align 4
  %24 = call i32 @SB_PRINT_QUERIES(i32 %23)
  %25 = load i32, i32* @minor_update_queries, align 4
  %26 = call i32 @SB_PRINT_QUERIES(i32 %25)
  %27 = load i64, i64* @RECOMMEND_MODE, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load i32, i32* @get_raw_recommend_updates_queries, align 4
  %31 = call i32 @SB_PRINT_QUERIES(i32 %30)
  %32 = load i32, i32* @get_max_raw_recommend_updates_queries, align 4
  %33 = call i32 @SB_PRINT_QUERIES(i32 %32)
  %34 = load i32, i32* @skipped_set_recommend_updates_queries, align 4
  %35 = call i32 @SB_PRINT_QUERIES(i32 %34)
  %36 = load i32, i32* @tot_raw_recommend_updates_records, align 4
  %37 = load i32, i32* @get_raw_recommend_updates_queries, align 4
  %38 = call i32 @safe_div(i32 %36, i32 %37)
  %39 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %29, %1
  %41 = load i32, i32* @max_news_days, align 4
  %42 = call i32 @SB_PRINT_I32(i32 %41)
  %43 = load i32, i32* @tot_users, align 4
  %44 = load i32, i32* @max_uid, align 4
  %45 = load i32, i32* @items_kept, align 4
  %46 = load i32, i32* @tot_places, align 4
  %47 = load i32, i32* @comments_kept, align 4
  %48 = load i32, i32* @loadavg_last_minute, align 4
  %49 = load i64, i64* @now, align 8
  %50 = load i64, i64* @last_collect_garbage_time, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @items_removed_in_process_new, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @items_removed_in_prepare_updates, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @garbage_objects_collected, align 4
  %58 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i64 %51, i8* %52, i32 %53, i8* %54, i32 %55, i8* %56, i32 %57)
  %59 = load i64, i64* @RECOMMEND_MODE, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %40
  %62 = load i32, i32* @dups_removed_in_process_raw_updates, align 4
  %63 = call i32 @SB_PRINT_I64(i32 %62)
  %64 = load i32, i32* @dups_users_removed_from_urlist, align 4
  %65 = call i32 @SB_PRINT_I64(i32 %64)
  br label %66

66:                                               ; preds = %61, %40
  %67 = load i32, i32* @garbage_users_collected, align 4
  %68 = call i32 @SB_PRINT_I64(i32 %67)
  %69 = load i64, i64* @COMM_MODE, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %66
  %72 = load i32, i32* @small_users_number, align 4
  %73 = load i32, i32* @large_users_number, align 4
  %74 = load i64, i64* @new_users_number, align 8
  %75 = load i64, i64* @bookmarks_ptr, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i64, i64* @bookmarks_ptr, align 8
  br label %82

79:                                               ; preds = %71
  %80 = load i64, i64* @bookmarks_ptr, align 8
  %81 = sub nsw i64 0, %80
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i64 [ %78, %77 ], [ %81, %79 ]
  %84 = load i64, i64* @new_users_number, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load i32, i32* @tot_aio_queries, align 4
  %87 = load i32, i32* @active_aio_queries, align 4
  %88 = load i32, i32* @expired_aio_queries, align 4
  %89 = load i32, i32* @tot_aio_queries, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* @total_aio_time, align 4
  %93 = load i32, i32* @tot_aio_queries, align 4
  %94 = sdiv i32 %92, %93
  br label %96

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ %94, %91 ], [ 0, %95 ]
  %98 = load i32, i32* @metafiles_load_errors, align 4
  %99 = load i32, i32* @metafiles_load_success, align 4
  %100 = load i32, i32* @metafiles_loaded, align 4
  %101 = load i32, i32* @metafiles_unloaded, align 4
  %102 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %103 = load i32, i32* @allocated_metafiles_size, align 4
  %104 = load i32, i32* @max_allocated_metafiles_size, align 4
  %105 = load i32, i32* @metafiles_cache_miss, align 4
  %106 = load i32, i32* @metafiles_cache_ok, align 4
  %107 = load i32, i32* @metafiles_cache_loading, align 4
  %108 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([455 x i8], [455 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %73, i64 %74, i64 %85, i32 %86, i32 %87, i32 %88, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %96, %66
  %110 = load i32, i32* @FullVersionStr, align 4
  %111 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  ret i32 %113
}

declare dso_local i32 @sb_prepare(%struct.TYPE_5__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_5__*, i8*, i32, ...) #1

declare dso_local i32 @SB_PRINT_QUERIES(i32) #1

declare dso_local i32 @safe_div(i32, i32) #1

declare dso_local i32 @SB_PRINT_I32(i32) #1

declare dso_local i32 @SB_PRINT_I64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
