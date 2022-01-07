; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_uprobes.c_arch_uprobe_analyze_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_uprobes.c_arch_uprobe_analyze_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32*, i32* }
%struct.mm_struct = type { i32 }
%union.mips_instruction = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Uprobes for compact branches are not supported\0A\00", align 1
@UPROBE_BRK_UPROBE_XOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_analyze_insn(%struct.arch_uprobe* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_uprobe*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.mips_instruction, align 4
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = and i64 %9, 3
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %17 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %union.mips_instruction* %8 to i32*
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @__insn_is_compact_branch(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = call i32 @pr_notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %15
  %31 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %32 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @insn_has_delay_slot(i32 %35)
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %40 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @UPROBE_BRK_UPROBE_XOL, align 4
  %44 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %45 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %30, %26, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @__insn_is_compact_branch(i32) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i64 @insn_has_delay_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
