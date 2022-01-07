; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_kill_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_kill_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_aux_transaction_cmd_kill = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"kill_transaction: X < 1\0A\00", align 1
@transactions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"kill_transaction: X >= current transaction id (X = %d, transaction_id = %d)\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"kill_transaction: Unknown signal: %d\0A\00", align 1
@T = common dso_local global i32 0, align 4
@LEV_COPYEXEC_AUX_TRANSACTION_CMD_KILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kill_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_transaction(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_copyexec_aux_transaction_cmd_kill*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @transactions, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @transactions, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %19)
  store i32 -2, i32* %3, align 4
  br label %45

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SIGINT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SIGTERM, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SIGKILL, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 -3, i32* %3, align 4
  br label %45

36:                                               ; preds = %29, %25, %21
  %37 = load i32, i32* @LEV_COPYEXEC_AUX_TRANSACTION_CMD_KILL, align 4
  %38 = call %struct.lev_copyexec_aux_transaction_cmd_kill* @tb_alloc_logevent(i32* @T, i32 %37, i32 8)
  store %struct.lev_copyexec_aux_transaction_cmd_kill* %38, %struct.lev_copyexec_aux_transaction_cmd_kill** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.lev_copyexec_aux_transaction_cmd_kill*, %struct.lev_copyexec_aux_transaction_cmd_kill** %6, align 8
  %41 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_kill, %struct.lev_copyexec_aux_transaction_cmd_kill* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.lev_copyexec_aux_transaction_cmd_kill*, %struct.lev_copyexec_aux_transaction_cmd_kill** %6, align 8
  %44 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_kill, %struct.lev_copyexec_aux_transaction_cmd_kill* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %33, %16, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local %struct.lev_copyexec_aux_transaction_cmd_kill* @tb_alloc_logevent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
