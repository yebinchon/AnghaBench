; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uprobe_analyze_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uprobe_analyze_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32, i32, i32, i8**, i64 }
%struct.mm_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UPROBE_SS_ARM_INSN = common dso_local global i32 0, align 4
@uprobes_probes_actions = common dso_local global i32 0, align 4
@UPROBE_SWBP_ARM_INSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_analyze_insn(%struct.arch_uprobe* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_uprobe*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = and i64 %11, 3
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %19 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__mem_to_opcode_arm(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @__opcode_to_mem_arm(i32 %24)
  %26 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %27 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @UPROBE_SS_ARM_INSN, align 4
  %31 = call i8* @__opcode_to_mem_arm(i32 %30)
  %32 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %33 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %32, i32 0, i32 3
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %38 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %37, i32 0, i32 2
  %39 = load i32, i32* @uprobes_probes_actions, align 4
  %40 = call i32 @arm_probes_decode_insn(i32 %36, i32* %38, i32 0, i32 %39, i32* null)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %49 [
    i32 128, label %42
    i32 129, label %45
    i32 130, label %48
  ]

42:                                               ; preds = %17
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %67

45:                                               ; preds = %17
  %46 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %47 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %50

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %17, %48
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* @UPROBE_SWBP_ARM_INSN, align 4
  %52 = and i32 %51, 268435455
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp uge i32 %53, -536870912
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, -536870912
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, -268435456
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %66 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %42, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @__mem_to_opcode_arm(i32) #1

declare dso_local i8* @__opcode_to_mem_arm(i32) #1

declare dso_local i32 @arm_probes_decode_insn(i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
