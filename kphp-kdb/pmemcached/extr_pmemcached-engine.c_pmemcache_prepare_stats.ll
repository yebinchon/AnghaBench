; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_pmemcache_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_pmemcache_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_7__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"malloc_mem\09%ld\0Azalloc_mem\09%ld\0A\00", align 1
@malloc_mem = common dso_local global i64 0, align 8
@zalloc_mem = common dso_local global i64 0, align 8
@SB_BINLOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [513 x i8] c"index_loaded_bytes\09%lld\0Aindex_size\09%lld\0Aindex_path\09%s\0Aindex_load_time\09%.6lfs\0Apid\09%d\0Asnapshot_size\09%d\0Acurr_items\09%d\0Atotal_items\09%lld\0Acurrent_memory_used\09%lld\0Acmd_get\09%lld\0Acmd_set\09%lld\0Aget_hits\09%lld\0Aget_misses\09%lld\0Acmd_incr\09%lld\0Acmd_decr\09%lld\0Acmd_delete\09%lld\0Acmd_version\09%lld\0Acmd_stats\09%lld\0Atotal_response_words\09%lld\0Atotal_response_bytes\09%lld\0Alimit_max_dynamic_memory\09%lld\0Areindex_on_low_memory\09%d\0Areindex_on_low_memory_time_ago\09%d\0Awildcard_arrays_allocated\09%d\0Awildcard_cache_memory\09%lld\0Awildcard_cache_entries\09%d\0A\00", align 1
@snapshot_size = common dso_local global i32 0, align 4
@index_size = common dso_local global i32 0, align 4
@engine_snapshot_name = common dso_local global i32 0, align 4
@index_load_time = common dso_local global i32 0, align 4
@total_items = common dso_local global i32 0, align 4
@cmd_get = common dso_local global i32 0, align 4
@cmd_set = common dso_local global i32 0, align 4
@get_hits = common dso_local global i32 0, align 4
@get_missed = common dso_local global i32 0, align 4
@cmd_incr = common dso_local global i32 0, align 4
@cmd_decr = common dso_local global i32 0, align 4
@cmd_delete = common dso_local global i32 0, align 4
@cmd_version = common dso_local global i32 0, align 4
@cmd_stats = common dso_local global i32 0, align 4
@tot_response_words = common dso_local global i32 0, align 4
@tot_response_bytes = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@reindex_on_low_memory = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4
@last_reindex_on_low_memory_time = common dso_local global i32 0, align 4
@wildcard_arrays_allocated = common dso_local global i32 0, align 4
@wildcard_cache_memory = common dso_local global i32 0, align 4
@wildcard_cache_entries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmemcache_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = load i32, i32* @stats_buff, align 4
  %6 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %7 = call i32 @sb_prepare(%struct.TYPE_7__* %3, %struct.connection* %4, i32 %5, i32 %6)
  %8 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %9 = call i32 @sb_memory(%struct.TYPE_7__* %3, i32 %8)
  %10 = load i64, i64* @malloc_mem, align 8
  %11 = load i64, i64* @zalloc_mem, align 8
  %12 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @sb_printf(%struct.TYPE_7__* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  %13 = load i32, i32* @SB_BINLOG, align 4
  %14 = load i32, i32* @snapshot_size, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* @index_size, align 4
  %17 = load i32, i32* @engine_snapshot_name, align 4
  %18 = load i32, i32* @index_load_time, align 4
  %19 = call i32 (...) @getpid()
  %20 = call i32 (...) @get_entry_cnt()
  %21 = load i32, i32* @total_items, align 4
  %22 = call i32 (...) @get_memory_used()
  %23 = load i32, i32* @cmd_get, align 4
  %24 = load i32, i32* @cmd_set, align 4
  %25 = load i32, i32* @get_hits, align 4
  %26 = load i32, i32* @get_missed, align 4
  %27 = load i32, i32* @cmd_incr, align 4
  %28 = load i32, i32* @cmd_decr, align 4
  %29 = load i32, i32* @cmd_delete, align 4
  %30 = load i32, i32* @cmd_version, align 4
  %31 = load i32, i32* @cmd_stats, align 4
  %32 = load i32, i32* @tot_response_words, align 4
  %33 = load i32, i32* @tot_response_bytes, align 4
  %34 = load i32, i32* @max_memory, align 4
  %35 = load i64, i64* @reindex_on_low_memory, align 8
  %36 = load i64, i64* @reindex_on_low_memory, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* @now, align 4
  %40 = load i32, i32* @last_reindex_on_low_memory_time, align 4
  %41 = sub nsw i32 %39, %40
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ -1, %42 ]
  %45 = load i32, i32* @wildcard_arrays_allocated, align 4
  %46 = load i32, i32* @wildcard_cache_memory, align 4
  %47 = load i32, i32* @wildcard_cache_entries, align 4
  %48 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @sb_printf(%struct.TYPE_7__* %3, i8* getelementptr inbounds ([513 x i8], [513 x i8]* @.str.1, i64 0, i64 0), i64 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 64, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i64 %35, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = call i32 @data_prepare_stats(%struct.TYPE_7__* %3)
  %50 = call i32 @custom_prepare_stats(%struct.TYPE_7__* %3)
  %51 = load i32, i32* @FullVersionStr, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @sb_printf(%struct.TYPE_7__* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  ret i32 %55
}

declare dso_local i32 @sb_prepare(%struct.TYPE_7__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_7__*, i8*, i64, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @get_entry_cnt(...) #1

declare dso_local i32 @get_memory_used(...) #1

declare dso_local i32 @data_prepare_stats(%struct.TYPE_7__*) #1

declare dso_local i32 @custom_prepare_stats(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
