; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_transaction_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_transaction_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_filesys_xfs_transaction = type { i64 }

@transaction_id = common dso_local global i64 0, align 8
@tmp_dir = common dso_local global i32 0, align 4
@pending_saving_binlogpos_logpos = common dso_local global i64 0, align 8
@last_closed_transaction_id = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4
@last_closed_transaction_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_filesys_xfs_transaction*)* @filesys_xfs_transaction_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filesys_xfs_transaction_end(%struct.lev_filesys_xfs_transaction* %0) #0 {
  %2 = alloca %struct.lev_filesys_xfs_transaction*, align 8
  store %struct.lev_filesys_xfs_transaction* %0, %struct.lev_filesys_xfs_transaction** %2, align 8
  %3 = load i64, i64* @transaction_id, align 8
  %4 = load %struct.lev_filesys_xfs_transaction*, %struct.lev_filesys_xfs_transaction** %2, align 8
  %5 = getelementptr inbounds %struct.lev_filesys_xfs_transaction, %struct.lev_filesys_xfs_transaction* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %3, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 (...) @pending_operations_apply()
  %11 = load i32, i32* @tmp_dir, align 4
  %12 = call i32 @delete_file(i32 %11)
  %13 = call i64 (...) @log_cur_pos()
  %14 = add nsw i64 %13, 8
  store i64 %14, i64* @pending_saving_binlogpos_logpos, align 8
  %15 = load i64, i64* @transaction_id, align 8
  store i64 %15, i64* @last_closed_transaction_id, align 8
  %16 = load i32, i32* @now, align 4
  store i32 %16, i32* @last_closed_transaction_time, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pending_operations_apply(...) #1

declare dso_local i32 @delete_file(i32) #1

declare dso_local i64 @log_cur_pos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
