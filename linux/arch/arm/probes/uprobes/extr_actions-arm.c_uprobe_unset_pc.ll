; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_uprobe_unset_pc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_uprobe_unset_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i64 }
%struct.arch_uprobe_task = type { i32 }
%struct.pt_regs = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arch_uprobe*, %struct.arch_uprobe_task*, %struct.pt_regs*)* @uprobe_unset_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uprobe_unset_pc(%struct.arch_uprobe* %0, %struct.arch_uprobe_task* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.arch_uprobe_task*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.arch_uprobe_task* %1, %struct.arch_uprobe_task** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load %struct.arch_uprobe_task*, %struct.arch_uprobe_task** %5, align 8
  %8 = getelementptr inbounds %struct.arch_uprobe_task, %struct.arch_uprobe_task* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %14 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 %9, i32* %16, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
