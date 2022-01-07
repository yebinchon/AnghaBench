; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_copyexec_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_copyexec_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stats_buffer = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [651 x i8] c"binlog_original_size\09%lld\0Abinlog_loaded_bytes\09%lld\0Abinlog_load_time\09%.6fs\0Acurrent_binlog_size\09%lld\0Abinlog_uncommitted_bytes\09%d\0Abinlog_path\09%s\0Abinlog_first_timestamp\09%d\0Abinlog_read_timestamp\09%d\0Abinlog_last_timestamp\09%d\0Aaux_binlog_path\09%s\0Aaux_log_read_start\09%lld\0Aaux_log_readto_pos\09%lld\0Aindex_size\09%lld\0Aindex_path\09%s\0Aindex_load_time\09%.6lfs\0Amain_volume_id\09%llu\0Aaux_volume_id\09%llu\0Ainstance_mask\09%d\0Afirst_transaction_id\09%d\0Atransactions\09%d\0Atot_memory_transactions\09%d\0Achild_running_list_size\09%d\0Aauto_running_list_size\09%d\0Atot_ignored\09%d\0Atot_interrupted\09%d\0Atot_cancelled\09%d\0Atot_terminated\09%d\0Atot_failed\09%d\0Atot_decryption_failed\09%d\0Atot_io_failed\09%d\0Aversion\09%s\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@binlog_load_time = common dso_local global i32 0, align 4
@log_pos = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"(too long)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@log_first_ts = common dso_local global i32 0, align 4
@log_read_until = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@aux_binlogname = common dso_local global i8* null, align 8
@aux_log_read_start = common dso_local global i32 0, align 4
@aux_log_readto_pos = common dso_local global i32 0, align 4
@engine_snapshot_size = common dso_local global i32 0, align 4
@engine_snapshot_name = common dso_local global i32 0, align 4
@index_load_time = common dso_local global i32 0, align 4
@main_volume_id = common dso_local global i32 0, align 4
@aux_volume_id = common dso_local global i32 0, align 4
@instance_mask = common dso_local global i32 0, align 4
@first_transaction_id = common dso_local global i32 0, align 4
@transactions = common dso_local global i32 0, align 4
@tot_memory_transactions = common dso_local global i32 0, align 4
@tot_ignored = common dso_local global i32 0, align 4
@tot_interrupted = common dso_local global i32 0, align 4
@tot_cancelled = common dso_local global i32 0, align 4
@tot_terminated = common dso_local global i32 0, align 4
@tot_failed = common dso_local global i32 0, align 4
@tot_decryption_failed = common dso_local global i32 0, align 4
@tot_io_failed = common dso_local global i32 0, align 4
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyexec_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %7 = call i32 (...) @compute_uncommitted_log_bytes()
  store i32 %7, i32* %3, align 4
  %8 = call i32 @get_running_lists_size(i32* %4, i32* %5)
  %9 = load %struct.connection*, %struct.connection** %2, align 8
  %10 = load i32, i32* @stats_buffer, align 4
  %11 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %12 = call i32 @sb_prepare(%struct.TYPE_5__* %6, %struct.connection* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %14 = call i32 @sb_memory(%struct.TYPE_5__* %6, i32 %13)
  %15 = load i64, i64* @log_readto_pos, align 8
  %16 = load i64, i64* @log_readto_pos, align 8
  %17 = load i64, i64* @jump_log_pos, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load i32, i32* @binlog_load_time, align 4
  %20 = load i32, i32* @log_pos, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** @binlogname, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load i8*, i8** @binlogname, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = icmp slt i32 %26, 250
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** @binlogname, align 8
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %30 ]
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %33 ]
  %36 = load i32, i32* @log_first_ts, align 4
  %37 = load i32, i32* @log_read_until, align 4
  %38 = load i32, i32* @log_last_ts, align 4
  %39 = load i8*, i8** @aux_binlogname, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = icmp slt i32 %40, 250
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i8*, i8** @aux_binlogname, align 8
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %44 ]
  %47 = load i32, i32* @aux_log_read_start, align 4
  %48 = load i32, i32* @aux_log_readto_pos, align 4
  %49 = load i32, i32* @engine_snapshot_size, align 4
  %50 = load i32, i32* @engine_snapshot_name, align 4
  %51 = load i32, i32* @index_load_time, align 4
  %52 = load i32, i32* @main_volume_id, align 4
  %53 = load i32, i32* @aux_volume_id, align 4
  %54 = load i32, i32* @instance_mask, align 4
  %55 = load i32, i32* @first_transaction_id, align 4
  %56 = load i32, i32* @transactions, align 4
  %57 = load i32, i32* @tot_memory_transactions, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @tot_ignored, align 4
  %61 = load i32, i32* @tot_interrupted, align 4
  %62 = load i32, i32* @tot_cancelled, align 4
  %63 = load i32, i32* @tot_terminated, align 4
  %64 = load i32, i32* @tot_failed, align 4
  %65 = load i32, i32* @tot_decryption_failed, align 4
  %66 = load i32, i32* @tot_io_failed, align 4
  %67 = load i32, i32* @FullVersionStr, align 4
  %68 = call i32 @sb_printf(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([651 x i8], [651 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %18, i32 %19, i32 %20, i32 %21, i8* %35, i32 %36, i32 %37, i32 %38, i8* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  ret i32 %70
}

declare dso_local i32 @compute_uncommitted_log_bytes(...) #1

declare dso_local i32 @get_running_lists_size(i32*, i32*) #1

declare dso_local i32 @sb_prepare(%struct.TYPE_5__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_5__*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
