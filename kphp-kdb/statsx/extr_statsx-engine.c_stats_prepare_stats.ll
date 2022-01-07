; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_stats_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_stats_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i64 0, align 8
@AM_GET_MEMORY_USAGE_OVERALL = common dso_local global i64 0, align 8
@SB_BINLOG = common dso_local global i32 0, align 4
@SB_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [548 x i8] c"snapshot_loading_average_blocking_read_bytes\09%.6f\0Asnapshot_loading_blocking_read_calls\09%d\0Atot_user_metafiles\09%d\0Atot_user_metafile_bytes\09%lld\0Acounters\09%d\0Acounters_percent\09%.6f\0Acounters_prime\09%d\0Atotal_views\09%lld\0Atree_nodes_allocated\09%d\0Acounter_instances\09%d\0Acounter_instances_percent\09%.6f\0Aallocated_counter_instances\09%d\0Adeleted_by_LRU\09%lld\0Aallocated_memory\09%lld\0Atot_aio_queries\09%lld\0Aactive_aio_queries\09%lld\0Aexpired_aio_queries\09%lld\0Aavg_aio_query_time\09%.6f\0Aaio_bytes_loaded\09%lld\0Atot_aio_queries\09%lld\0Atot_aio_fails\09%lld\0Amemory_to_index\09%lld\0Aversion\09%s\0A\00", align 1
@snapshot_loading_average_blocking_read_bytes = common dso_local global i32 0, align 4
@snapshot_loading_blocking_read_calls = common dso_local global i32 0, align 4
@tot_user_metafiles = common dso_local global i32 0, align 4
@tot_user_metafile_bytes = common dso_local global i32 0, align 4
@tot_counters = common dso_local global i32 0, align 4
@max_counters = common dso_local global i32 0, align 4
@counters_prime = common dso_local global i32 0, align 4
@tot_views = common dso_local global i32 0, align 4
@alloc_tree_nodes = common dso_local global i32 0, align 4
@tot_counter_instances = common dso_local global i32 0, align 4
@index_size = common dso_local global i32 0, align 4
@tot_counters_allocated = common dso_local global i32 0, align 4
@deleted_by_lru = common dso_local global i32 0, align 4
@tot_memory_allocated = common dso_local global i32 0, align 4
@tot_aio_queries = common dso_local global i32 0, align 4
@active_aio_queries = common dso_local global i32 0, align 4
@expired_aio_queries = common dso_local global i32 0, align 4
@total_aio_time = common dso_local global i32 0, align 4
@tot_aio_loaded_bytes = common dso_local global i32 0, align 4
@tot_aio_fails = common dso_local global i32 0, align 4
@memory_to_index = common dso_local global i32 0, align 4
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_prepare_stats(%struct.connection* %0) #0 {
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
  %12 = load i32, i32* @SB_BINLOG, align 4
  %13 = load i32, i32* @SB_INDEX, align 4
  %14 = load i32, i32* @snapshot_loading_average_blocking_read_bytes, align 4
  %15 = load i32, i32* @snapshot_loading_blocking_read_calls, align 4
  %16 = load i32, i32* @tot_user_metafiles, align 4
  %17 = load i32, i32* @tot_user_metafile_bytes, align 4
  %18 = load i32, i32* @tot_counters, align 4
  %19 = load i32, i32* @tot_counters, align 4
  %20 = load i32, i32* @max_counters, align 4
  %21 = call i32 @percent(i32 %19, i32 %20)
  %22 = load i32, i32* @counters_prime, align 4
  %23 = load i32, i32* @tot_views, align 4
  %24 = load i32, i32* @alloc_tree_nodes, align 4
  %25 = load i32, i32* @tot_counter_instances, align 4
  %26 = load i32, i32* @tot_counter_instances, align 4
  %27 = load i32, i32* @index_size, align 4
  %28 = call i32 @percent(i32 %26, i32 %27)
  %29 = load i32, i32* @tot_counters_allocated, align 4
  %30 = load i32, i32* @deleted_by_lru, align 4
  %31 = load i32, i32* @tot_memory_allocated, align 4
  %32 = load i32, i32* @tot_aio_queries, align 4
  %33 = load i32, i32* @active_aio_queries, align 4
  %34 = load i32, i32* @expired_aio_queries, align 4
  %35 = load i32, i32* @tot_aio_queries, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @total_aio_time, align 4
  %39 = load i32, i32* @tot_aio_queries, align 4
  %40 = sdiv i32 %38, %39
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  %44 = load i32, i32* @tot_aio_loaded_bytes, align 4
  %45 = load i32, i32* @tot_aio_queries, align 4
  %46 = load i32, i32* @tot_aio_fails, align 4
  %47 = load i32, i32* @memory_to_index, align 4
  %48 = load i32, i32* @FullVersionStr, align 4
  %49 = call i32 @sb_printf(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([548 x i8], [548 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

declare dso_local i32 @sb_prepare(%struct.TYPE_5__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @sb_printf(%struct.TYPE_5__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @percent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
