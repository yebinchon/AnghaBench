; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_uprobe_set_pc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_uprobe_set_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i64 }
%struct.arch_uprobe_task = type { i64 }
%struct.pt_regs = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arch_uprobe*, %struct.arch_uprobe_task*, %struct.pt_regs*)* @uprobe_set_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uprobe_set_pc(%struct.arch_uprobe* %0, %struct.arch_uprobe_task* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.arch_uprobe_task*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.arch_uprobe_task* %1, %struct.arch_uprobe_task** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %8 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %9 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.arch_uprobe_task*, %struct.arch_uprobe_task** %5, align 8
  %18 = getelementptr inbounds %struct.arch_uprobe_task, %struct.arch_uprobe_task* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %22, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
