; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_wait_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_wait_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_aux_transaction_cmd_wait = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"wait_transaction: X < 1\0A\00", align 1
@transactions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"wait_transaction: X >= current transaction id (X = %d, transaction_id = %d)\0A\00", align 1
@T = common dso_local global i32 0, align 4
@LEV_COPYEXEC_AUX_TRANSACTION_CMD_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wait_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_transaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.lev_copyexec_aux_transaction_cmd_wait*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @transactions, align 4
  %12 = add nsw i32 %11, 1
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @transactions, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %17)
  store i32 -2, i32* %2, align 4
  br label %25

19:                                               ; preds = %9
  %20 = load i32, i32* @LEV_COPYEXEC_AUX_TRANSACTION_CMD_WAIT, align 4
  %21 = call %struct.lev_copyexec_aux_transaction_cmd_wait* @tb_alloc_logevent(i32* @T, i32 %20, i32 4)
  store %struct.lev_copyexec_aux_transaction_cmd_wait* %21, %struct.lev_copyexec_aux_transaction_cmd_wait** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.lev_copyexec_aux_transaction_cmd_wait*, %struct.lev_copyexec_aux_transaction_cmd_wait** %4, align 8
  %24 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_wait, %struct.lev_copyexec_aux_transaction_cmd_wait* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %14, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local %struct.lev_copyexec_aux_transaction_cmd_wait* @tb_alloc_logevent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
