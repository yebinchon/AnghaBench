; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_transaction_begin.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_transaction_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_filesys_xfs_transaction = type { i32 }

@pending_saving_binlogpos_logpos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Begin transaction %d.\0A\00", align 1
@tmp_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mkdir (%s) fail. %m\0A\00", align 1
@transaction_id = common dso_local global i32 0, align 4
@transaction_file_no = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_filesys_xfs_transaction*)* @filesys_xfs_transaction_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filesys_xfs_transaction_begin(%struct.lev_filesys_xfs_transaction* %0) #0 {
  %2 = alloca %struct.lev_filesys_xfs_transaction*, align 8
  %3 = alloca i32, align 4
  store %struct.lev_filesys_xfs_transaction* %0, %struct.lev_filesys_xfs_transaction** %2, align 8
  store i64 0, i64* @pending_saving_binlogpos_logpos, align 8
  %4 = load %struct.lev_filesys_xfs_transaction*, %struct.lev_filesys_xfs_transaction** %2, align 8
  %5 = getelementptr inbounds %struct.lev_filesys_xfs_transaction, %struct.lev_filesys_xfs_transaction* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %3, align 4
  %8 = call i32 @pending_operations_reset(i32 1)
  %9 = load i32, i32* @tmp_dir, align 4
  %10 = call i32 @delete_file(i32 %9)
  %11 = load i32, i32* @tmp_dir, align 4
  %12 = call i32 @mkdir(i32 %11, i32 511)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @tmp_dir, align 4
  %17 = call i32 @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %1
  %20 = load %struct.lev_filesys_xfs_transaction*, %struct.lev_filesys_xfs_transaction** %2, align 8
  %21 = getelementptr inbounds %struct.lev_filesys_xfs_transaction, %struct.lev_filesys_xfs_transaction* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @transaction_id, align 4
  store i64 0, i64* @transaction_file_no, align 8
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @pending_operations_reset(i32) #1

declare dso_local i32 @delete_file(i32) #1

declare dso_local i32 @mkdir(i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
