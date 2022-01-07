; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/probes/extr_uprobes.c_arch_uprobe_skip_sstep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/probes/extr_uprobes.c_arch_uprobe_skip_sstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i64, %struct.pt_regs*)* }
%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_skip_sstep(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %9 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %15 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %20 = call i64 @instruction_pointer(%struct.pt_regs* %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %22 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i64, %struct.pt_regs*)*, i32 (i32, i64, %struct.pt_regs*)** %23, align 8
  %25 = icmp ne i32 (i32, i64, %struct.pt_regs*)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %28 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, i64, %struct.pt_regs*)*, i32 (i32, i64, %struct.pt_regs*)** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = call i32 %30(i32 %31, i64 %32, %struct.pt_regs* %33)
  br label %35

35:                                               ; preds = %26, %13
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
