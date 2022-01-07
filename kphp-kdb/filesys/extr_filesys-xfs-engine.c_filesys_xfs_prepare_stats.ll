; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_prepare_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_prepare_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32 }

@stats_buffer = common dso_local global i32 0, align 4
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@AM_GET_MEMORY_USAGE_SELF = common dso_local global i32 0, align 4
@SB_BINLOG = common dso_local global i32 0, align 4
@SB_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [173 x i8] c"volume_id\09%lld\0Awork_dir\09%s\0Asnapshot_compression_level\09%d\0Astart_transaction_id\09%d\0Atransaction_id\09%d\0Alast_closed_transaction_id\09%d\0Alast_closed_transaction_time\09%d\0Aversion\09%s\0A\00", align 1
@volume_id = common dso_local global i32 0, align 4
@work_dir = common dso_local global i32 0, align 4
@compression_level = common dso_local global i32 0, align 4
@start_transaction_id = common dso_local global i32 0, align 4
@transaction_id = common dso_local global i32 0, align 4
@last_closed_transaction_id = common dso_local global i32 0, align 4
@last_closed_transaction_time = common dso_local global i32 0, align 4
@FullVersionStr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filesys_xfs_prepare_stats(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %4 = load %struct.connection*, %struct.connection** %2, align 8
  %5 = load i32, i32* @stats_buffer, align 4
  %6 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %7 = call i32 @sb_prepare(%struct.TYPE_5__* %3, %struct.connection* %4, i32 %5, i32 %6)
  %8 = load i32, i32* @AM_GET_MEMORY_USAGE_SELF, align 4
  %9 = call i32 @sb_memory(%struct.TYPE_5__* %3, i32 %8)
  %10 = load i32, i32* @SB_BINLOG, align 4
  %11 = load i32, i32* @SB_INDEX, align 4
  %12 = load i32, i32* @volume_id, align 4
  %13 = load i32, i32* @work_dir, align 4
  %14 = load i32, i32* @compression_level, align 4
  %15 = load i32, i32* @start_transaction_id, align 4
  %16 = load i32, i32* @transaction_id, align 4
  %17 = load i32, i32* @last_closed_transaction_id, align 4
  %18 = load i32, i32* @last_closed_transaction_time, align 4
  %19 = load i32, i32* @FullVersionStr, align 4
  %20 = call i32 @sb_printf(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  ret i32 %22
}

declare dso_local i32 @sb_prepare(%struct.TYPE_5__*, %struct.connection*, i32, i32) #1

declare dso_local i32 @sb_memory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sb_printf(%struct.TYPE_5__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
