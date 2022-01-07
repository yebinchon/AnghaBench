; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/probes/extr_uprobes.c_arch_uprobe_analyze_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/probes/extr_uprobes.c_arch_uprobe_analyze_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32, i32, i32* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MMCF_AARCH32 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@AARCH64_INSN_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_analyze_insn(%struct.arch_uprobe* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_uprobe*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MMCF_AARCH32, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @AARCH64_INSN_SIZE, align 4
  %22 = call i32 @IS_ALIGNED(i64 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %30 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %36 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %35, i32 0, i32 1
  %37 = call i32 @arm_probe_decode_insn(i32 %34, i32* %36)
  switch i32 %37, label %44 [
    i32 128, label %38
    i32 129, label %41
  ]

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %28
  %42 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %43 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %45

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %41
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %38, %24, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @arm_probe_decode_insn(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
