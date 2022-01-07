; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_copyexec_results_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_copyexec_results_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stats_buff = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [360 x i8] c"binlog_original_size\09%lld\0Abinlog_loaded_bytes\09%lld\0Abinlog_load_time\09%.6fs\0Acurrent_binlog_size\09%lld\0Abinlog_uncommitted_bytes\09%d\0Abinlog_path\09%s\0Abinlog_first_timestamp\09%d\0Abinlog_read_timestamp\09%d\0Abinlog_last_timestamp\09%d\0Acmd_get\09%lld\0Acmd_stats\09%lld\0Ahosts\09%d\0Atot_memory_transactions\09%d\0Amax_memory_transactions\09%d\0Aalloc_tree_nodes\09%d\0Afree_tree_nodes\09%d\0Aversion\09%s\0A\00", align 1
@log_readto_pos = common dso_local global i32 0, align 4
@binlog_loaded_size = common dso_local global i32 0, align 4
@binlog_load_time = common dso_local global i32 0, align 4
@log_pos = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"(too long)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@log_first_ts = common dso_local global i32 0, align 4
@log_read_until = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@cmd_get = common dso_local global i32 0, align 4
@cmd_stats = common dso_local global i32 0, align 4
@hosts = common dso_local global i32 0, align 4
@tot_memory_transactions = common dso_local global i32 0, align 4
@max_lru_size = common dso_local global i32 0, align 4
@alloc_tree_nodes = common dso_local global i32 0, align 4
@free_tree_nodes = common dso_local global i32 0, align 4
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyexec_results_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [7 x i64], align 16
  %5 = alloca %struct.TYPE_5__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = call i32 (...) @compute_uncommitted_log_bytes()
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @dyn_update_stats()
  %8 = getelementptr inbounds [7 x i64], [7 x i64]* %4, i64 0, i64 0
  %9 = call i32 @get_memory_usage(i64* %8, i32 7)
  %10 = load %struct.connection*, %struct.connection** %2, align 8
  %11 = load i32, i32* @stats_buff, align 4
  %12 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %13 = call i32 @sb_prepare(%struct.TYPE_5__* %5, %struct.connection* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %15 = call i32 @sb_memory(%struct.TYPE_5__* %5, i32 %14)
  %16 = load i32, i32* @log_readto_pos, align 4
  %17 = load i32, i32* @binlog_loaded_size, align 4
  %18 = load i32, i32* @binlog_load_time, align 4
  %19 = load i32, i32* @log_pos, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i8*, i8** @binlogname, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i8*, i8** @binlogname, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp slt i32 %25, 250
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** @binlogname, align 8
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %29 ]
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %32 ]
  %35 = load i32, i32* @log_first_ts, align 4
  %36 = load i32, i32* @log_read_until, align 4
  %37 = load i32, i32* @log_last_ts, align 4
  %38 = load i32, i32* @cmd_get, align 4
  %39 = load i32, i32* @cmd_stats, align 4
  %40 = load i32, i32* @hosts, align 4
  %41 = load i32, i32* @tot_memory_transactions, align 4
  %42 = load i32, i32* @max_lru_size, align 4
  %43 = load i32, i32* @alloc_tree_nodes, align 4
  %44 = load i32, i32* @free_tree_nodes, align 4
  %45 = load i32, i32* @FullVersionStr, align 4
  %46 = call i32 @sb_printf(%struct.TYPE_5__* %5, i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i8* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  ret i32 %48
}

declare dso_local i32 @compute_uncommitted_log_bytes(...) #1

declare dso_local i32 @dyn_update_stats(...) #1

declare dso_local i32 @get_memory_usage(i64*, i32) #1

declare dso_local i32 @sb_prepare(%struct.TYPE_5__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_5__*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
