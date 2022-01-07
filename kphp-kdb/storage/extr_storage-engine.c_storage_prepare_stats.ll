; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_storage_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_storage_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i64 0, align 8
@AM_GET_MEMORY_USAGE_OVERALL = common dso_local global i64 0, align 8
@booting_time = common dso_local global i32 0, align 4
@scandir_time = common dso_local global i32 0, align 4
@reoder_binlog_files_time = common dso_local global i32 0, align 4
@open_replicas_time = common dso_local global i32 0, align 4
@binlog_index_loading_time = common dso_local global i32 0, align 4
@append_to_binlog_time = common dso_local global i32 0, align 4
@binlog_load_time = common dso_local global i32 0, align 4
@index_load_time = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [551 x i8] c"volumes\09%d\0Abinlog_disabled\09%d\0Aindex_loaded_bytes\09%lld\0Aindex_size\09%lld\0Acmd_version\09%lld\0Acmd_stats\09%lld\0Atree_nodes\09%d\0Atot_docs\09%lld\0Aidx_docs\09%lld\0Amd5_mode\09%d\0Amax_immediately_reply_filesize\09%d\0Ametafiles\09%d\0Ametafiles_unloaded\09%lld\0Ametafiles_load_errors\09%lld\0Ametafiles_crc32_errors\09%lld\0Ametafiles_cancelled\09%lld\0Achoose_reading_binlog_errors\09%lld\0Ametafiles_bytes\09%d\0Amax_metafiles_bytes\09%d\0Atot_aio_queries\09%lld\0Aactive_aio_queries\09%lld\0Aexpired_aio_queries\09%lld\0Aavg_aio_query_time\09%.6f\0Aaio_bytes_loaded\09%lld\0Aaio_query_timeout\09%.3lfs\0Ametafiles_cache_hits\09%lld\0A\00", align 1
@volumes = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@snapshot_size = common dso_local global i32 0, align 4
@index_size = common dso_local global i32 0, align 4
@cmd_version = common dso_local global i32 0, align 4
@cmd_stats = common dso_local global i32 0, align 4
@alloc_tree_nodes = common dso_local global i32 0, align 4
@tot_docs = common dso_local global i32 0, align 4
@idx_docs = common dso_local global i32 0, align 4
@md5_mode = common dso_local global i32 0, align 4
@max_immediately_reply_filesize = common dso_local global i32 0, align 4
@metafiles = common dso_local global i32 0, align 4
@metafiles_unloaded = common dso_local global i32 0, align 4
@metafiles_load_errors = common dso_local global i32 0, align 4
@metafiles_crc32_errors = common dso_local global i32 0, align 4
@metafiles_cancelled = common dso_local global i32 0, align 4
@choose_reading_binlog_errors = common dso_local global i32 0, align 4
@metafiles_bytes = common dso_local global i32 0, align 4
@max_metafiles_bytes = common dso_local global i32 0, align 4
@tot_aio_queries = common dso_local global i32 0, align 4
@active_aio_queries = common dso_local global i32 0, align 4
@expired_aio_queries = common dso_local global i32 0, align 4
@total_aio_time = common dso_local global i32 0, align 4
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4
@aio_query_timeout_value = common dso_local global i32 0, align 4
@metafiles_cache_hits = common dso_local global i32 0, align 4
@max_aio_connections_per_disk = common dso_local global i32 0, align 4
@http_queries = common dso_local global i32 0, align 4
@get_queries = common dso_local global i32 0, align 4
@get_file_queries = common dso_local global i32 0, align 4
@get_hide_queries = common dso_local global i32 0, align 4
@get_misses = common dso_local global i32 0, align 4
@get_volume_misses = common dso_local global i32 0, align 4
@x_accel_redirects = common dso_local global i32 0, align 4
@one_pix_transparent_errors = common dso_local global i32 0, align 4
@too_many_aio_connections_errors = common dso_local global i32 0, align 4
@redirect_retries = common dso_local global i32 0, align 4
@redirect_retries_meta_aio = common dso_local global i32 0, align 4
@redirect_retries_corrupted = common dso_local global i32 0, align 4
@redirect_retries_secret = common dso_local global i32 0, align 4
@redirect_retries_type = common dso_local global i32 0, align 4
@redirect_retries_content_type = common dso_local global i32 0, align 4
@redirect_retries_local_id = common dso_local global i32 0, align 4
@statvfs_calls = common dso_local global i32 0, align 4
@active_gathers = common dso_local global i32 0, align 4
@gather_timeouts = common dso_local global i32 0, align 4
@tot_aio_fsync_queries = common dso_local global i32 0, align 4
@bad_image_cache_max_living_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"choose_binlog_options\09%s\0A\00", align 1
@choose_binlog_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"version\09%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = load i32, i32* @stats_buff, align 4
  %6 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %7 = call i32 @sb_prepare(%struct.TYPE_5__* %3, %struct.connection* %4, i32 %5, i32 %6)
  %8 = load i64, i64* @AM_GET_MEMORY_USAGE_SELF, align 8
  %9 = load i64, i64* @AM_GET_MEMORY_USAGE_OVERALL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @sb_memory(%struct.TYPE_5__* %3, i64 %10)
  %12 = load i32, i32* @booting_time, align 4
  %13 = call i32 @SB_PRINT_TIME(i32 %12)
  %14 = load i32, i32* @scandir_time, align 4
  %15 = call i32 @SB_PRINT_TIME(i32 %14)
  %16 = load i32, i32* @reoder_binlog_files_time, align 4
  %17 = call i32 @SB_PRINT_TIME(i32 %16)
  %18 = load i32, i32* @open_replicas_time, align 4
  %19 = call i32 @SB_PRINT_TIME(i32 %18)
  %20 = load i32, i32* @binlog_index_loading_time, align 4
  %21 = call i32 @SB_PRINT_TIME(i32 %20)
  %22 = load i32, i32* @append_to_binlog_time, align 4
  %23 = call i32 @SB_PRINT_TIME(i32 %22)
  %24 = load i32, i32* @binlog_load_time, align 4
  %25 = call i32 @SB_PRINT_TIME(i32 %24)
  %26 = load i32, i32* @index_load_time, align 4
  %27 = call i32 @SB_PRINT_TIME(i32 %26)
  %28 = load i32, i32* @volumes, align 4
  %29 = load i32, i32* @binlog_disabled, align 4
  %30 = load i32, i32* @snapshot_size, align 4
  %31 = load i32, i32* @index_size, align 4
  %32 = load i32, i32* @cmd_version, align 4
  %33 = load i32, i32* @cmd_stats, align 4
  %34 = load i32, i32* @alloc_tree_nodes, align 4
  %35 = load i32, i32* @tot_docs, align 4
  %36 = load i32, i32* @idx_docs, align 4
  %37 = load i32, i32* @md5_mode, align 4
  %38 = load i32, i32* @max_immediately_reply_filesize, align 4
  %39 = load i32, i32* @metafiles, align 4
  %40 = load i32, i32* @metafiles_unloaded, align 4
  %41 = load i32, i32* @metafiles_load_errors, align 4
  %42 = load i32, i32* @metafiles_crc32_errors, align 4
  %43 = load i32, i32* @metafiles_cancelled, align 4
  %44 = load i32, i32* @choose_reading_binlog_errors, align 4
  %45 = load i32, i32* @metafiles_bytes, align 4
  %46 = load i32, i32* @max_metafiles_bytes, align 4
  %47 = load i32, i32* @tot_aio_queries, align 4
  %48 = load i32, i32* @active_aio_queries, align 4
  %49 = load i32, i32* @expired_aio_queries, align 4
  %50 = load i32, i32* @total_aio_time, align 4
  %51 = load i32, i32* @tot_aio_queries, align 4
  %52 = call i32 @safe_div(i32 %50, i32 %51)
  %53 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %54 = load i32, i32* @aio_query_timeout_value, align 4
  %55 = load i32, i32* @metafiles_cache_hits, align 4
  %56 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([551 x i8], [551 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @max_aio_connections_per_disk, align 4
  %58 = call i32 @SB_PRINT_I32(i32 %57)
  %59 = load i32, i32* @http_queries, align 4
  %60 = call i32 @SB_PRINT_QUERIES(i32 %59)
  %61 = load i32, i32* @get_queries, align 4
  %62 = call i32 @SB_PRINT_QUERIES(i32 %61)
  %63 = load i32, i32* @get_file_queries, align 4
  %64 = call i32 @SB_PRINT_QUERIES(i32 %63)
  %65 = load i32, i32* @get_hide_queries, align 4
  %66 = call i32 @SB_PRINT_QUERIES(i32 %65)
  %67 = load i32, i32* @get_misses, align 4
  %68 = call i32 @SB_PRINT_I64(i32 %67)
  %69 = load i32, i32* @get_volume_misses, align 4
  %70 = call i32 @SB_PRINT_I64(i32 %69)
  %71 = load i32, i32* @x_accel_redirects, align 4
  %72 = call i32 @SB_PRINT_I64(i32 %71)
  %73 = load i32, i32* @one_pix_transparent_errors, align 4
  %74 = call i32 @SB_PRINT_I64(i32 %73)
  %75 = load i32, i32* @too_many_aio_connections_errors, align 4
  %76 = call i32 @SB_PRINT_I64(i32 %75)
  %77 = load i32, i32* @redirect_retries, align 4
  %78 = call i32 @SB_PRINT_I64(i32 %77)
  %79 = load i32, i32* @redirect_retries_meta_aio, align 4
  %80 = call i32 @SB_PRINT_I64(i32 %79)
  %81 = load i32, i32* @redirect_retries_corrupted, align 4
  %82 = call i32 @SB_PRINT_I64(i32 %81)
  %83 = load i32, i32* @redirect_retries_secret, align 4
  %84 = call i32 @SB_PRINT_I64(i32 %83)
  %85 = load i32, i32* @redirect_retries_type, align 4
  %86 = call i32 @SB_PRINT_I64(i32 %85)
  %87 = load i32, i32* @redirect_retries_content_type, align 4
  %88 = call i32 @SB_PRINT_I64(i32 %87)
  %89 = load i32, i32* @redirect_retries_local_id, align 4
  %90 = call i32 @SB_PRINT_I64(i32 %89)
  %91 = load i32, i32* @statvfs_calls, align 4
  %92 = call i32 @SB_PRINT_I64(i32 %91)
  %93 = load i32, i32* @active_gathers, align 4
  %94 = call i32 @SB_PRINT_I32(i32 %93)
  %95 = load i32, i32* @gather_timeouts, align 4
  %96 = call i32 @SB_PRINT_I64(i32 %95)
  %97 = load i32, i32* @tot_aio_fsync_queries, align 4
  %98 = call i32 @SB_PRINT_I64(i32 %97)
  %99 = load i32, i32* @bad_image_cache_max_living_time, align 4
  %100 = call i32 @SB_PRINT_I32(i32 %99)
  %101 = load i32, i32* @choose_binlog_options, align 4
  %102 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @FullVersionStr, align 4
  %104 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @sb_printf(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  ret i32 %106
}

declare dso_local i32 @sb_prepare(%struct.TYPE_5__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @SB_PRINT_TIME(i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_5__*, i8*, i32, ...) #1

declare dso_local i32 @safe_div(i32, i32) #1

declare dso_local i32 @SB_PRINT_I32(i32) #1

declare dso_local i32 @SB_PRINT_QUERIES(i32) #1

declare dso_local i32 @SB_PRINT_I64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
