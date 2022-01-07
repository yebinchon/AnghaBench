; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_backtrace.c_is_sp_move_ins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_backtrace.c_is_sp_move_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@addiu_op = common dso_local global i64 0, align 8
@daddiu_op = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.mips_instruction*)* @is_sp_move_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sp_move_ins(%union.mips_instruction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.mips_instruction*, align 8
  store %union.mips_instruction* %0, %union.mips_instruction** %3, align 8
  %4 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %5 = bitcast %union.mips_instruction* %4 to %struct.TYPE_2__*
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 29
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %11 = bitcast %union.mips_instruction* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 29
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %32

16:                                               ; preds = %9
  %17 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %18 = bitcast %union.mips_instruction* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @addiu_op, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %union.mips_instruction*, %union.mips_instruction** %3, align 8
  %25 = bitcast %union.mips_instruction* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @daddiu_op, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %16
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %30, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
