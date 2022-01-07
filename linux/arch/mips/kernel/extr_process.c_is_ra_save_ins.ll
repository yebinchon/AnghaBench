; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_is_ra_save_ins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_is_ra_save_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@sw_op = common dso_local global i32 0, align 4
@sd_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.mips_instruction*, i32*)* @is_ra_save_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ra_save_ins(%union.mips_instruction* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.mips_instruction*, align 8
  %5 = alloca i32*, align 8
  store %union.mips_instruction* %0, %union.mips_instruction** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %7 = bitcast %union.mips_instruction* %6 to %struct.TYPE_8__*
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @sw_op, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %14 = bitcast %union.mips_instruction* %13 to %struct.TYPE_8__*
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @sd_op, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %12, %2
  %20 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %21 = bitcast %union.mips_instruction* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 29
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %27 = bitcast %union.mips_instruction* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 31
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %union.mips_instruction*, %union.mips_instruction** %4, align 8
  %33 = bitcast %union.mips_instruction* %32 to %struct.TYPE_8__*
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %25, %19, %12
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
