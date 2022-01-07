; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_is_sp_move_ins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_is_sp_move_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }

@addiu_op = common dso_local global i64 0, align 8
@daddiu_op = common dso_local global i64 0, align 8
@mm_addiu32_op = common dso_local global i64 0, align 8
@mm_addiusp_func = common dso_local global i32 0, align 4
@mm_pool16d_op = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.mips_instruction*, i32*)* @is_sp_move_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sp_move_ins(%union.mips_instruction* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.mips_instruction*, align 8
  %5 = alloca i32*, align 8
  store %union.mips_instruction* %0, %union.mips_instruction** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %7 = bitcast %union.mips_instruction* %6 to %struct.TYPE_10__*
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 29
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %13 = bitcast %union.mips_instruction* %12 to %struct.TYPE_10__*
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 29
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %40

18:                                               ; preds = %11
  %19 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %20 = bitcast %union.mips_instruction* %19 to %struct.TYPE_10__*
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @addiu_op, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %27 = bitcast %union.mips_instruction* %26 to %struct.TYPE_10__*
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @daddiu_op, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25, %18
  %33 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %34 = bitcast %union.mips_instruction* %33 to %struct.TYPE_10__*
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %32, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
