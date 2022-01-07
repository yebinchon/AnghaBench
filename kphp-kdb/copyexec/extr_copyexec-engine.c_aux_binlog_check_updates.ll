; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_aux_binlog_check_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_aux_binlog_check_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@fd_aux_binlog = common dso_local global i32 0, align 4
@aux_log_readto_pos = common dso_local global i64 0, align 8
@exec_transaction = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aux_binlog_check_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_binlog_check_updates() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = load i32, i32* @fd_aux_binlog, align 4
  %3 = call i64 @fstat(i32 %2, %struct.stat* %1)
  %4 = icmp sge i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @aux_log_readto_pos, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i64, i64* @aux_log_readto_pos, align 8
  %12 = load i32, i32* @exec_transaction, align 4
  %13 = call i32 @copyexec_aux_replay_binlog(i64 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %5, %0
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @copyexec_aux_replay_binlog(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
