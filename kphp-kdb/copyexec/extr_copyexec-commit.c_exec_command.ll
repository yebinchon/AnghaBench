; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_exec_command.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_exec_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_aux_transaction_cmd_exec = type { i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_CHECK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"_check\00", align 1
@LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_RESULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"_result\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"exec%s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"exec_command: empty filename\0A\00", align 1
@T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @exec_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lev_copyexec_aux_transaction_cmd_exec*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_CHECK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @LEV_COPYEXEC_AUX_TRANSACTION_CMD_EXEC_RESULT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %17

17:                                               ; preds = %16, %12
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 @kprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add i64 16, %30
  %32 = call %struct.lev_copyexec_aux_transaction_cmd_exec* @tb_alloc_logevent(i32* @T, i64 %28, i64 %31)
  store %struct.lev_copyexec_aux_transaction_cmd_exec* %32, %struct.lev_copyexec_aux_transaction_cmd_exec** %7, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load %struct.lev_copyexec_aux_transaction_cmd_exec*, %struct.lev_copyexec_aux_transaction_cmd_exec** %7, align 8
  %36 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_exec, %struct.lev_copyexec_aux_transaction_cmd_exec* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.lev_copyexec_aux_transaction_cmd_exec*, %struct.lev_copyexec_aux_transaction_cmd_exec** %7, align 8
  %38 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_exec, %struct.lev_copyexec_aux_transaction_cmd_exec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.lev_copyexec_aux_transaction_cmd_exec*, %struct.lev_copyexec_aux_transaction_cmd_exec** %7, align 8
  %42 = getelementptr inbounds %struct.lev_copyexec_aux_transaction_cmd_exec, %struct.lev_copyexec_aux_transaction_cmd_exec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memcpy(i32 %39, i8* %40, i64 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %27, %25
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local %struct.lev_copyexec_aux_transaction_cmd_exec* @tb_alloc_logevent(i32*, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
