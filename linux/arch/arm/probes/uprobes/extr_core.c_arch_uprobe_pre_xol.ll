; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uprobe_pre_xol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_core.c_arch_uprobe_pre_xol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.uprobe_task* }
%struct.TYPE_4__ = type { i32 }
%struct.uprobe_task = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.arch_uprobe = type { i32 (%struct.arch_uprobe*, %struct.TYPE_5__*, %struct.pt_regs*)* }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@UPROBE_TRAP_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_pre_xol(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.arch_uprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.uprobe_task*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.uprobe_task*, %struct.uprobe_task** %7, align 8
  store %struct.uprobe_task* %8, %struct.uprobe_task** %5, align 8
  %9 = load %struct.arch_uprobe*, %struct.arch_uprobe** %3, align 8
  %10 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %9, i32 0, i32 0
  %11 = load i32 (%struct.arch_uprobe*, %struct.TYPE_5__*, %struct.pt_regs*)*, i32 (%struct.arch_uprobe*, %struct.TYPE_5__*, %struct.pt_regs*)** %10, align 8
  %12 = icmp ne i32 (%struct.arch_uprobe*, %struct.TYPE_5__*, %struct.pt_regs*)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.arch_uprobe*, %struct.arch_uprobe** %3, align 8
  %15 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %14, i32 0, i32 0
  %16 = load i32 (%struct.arch_uprobe*, %struct.TYPE_5__*, %struct.pt_regs*)*, i32 (%struct.arch_uprobe*, %struct.TYPE_5__*, %struct.pt_regs*)** %15, align 8
  %17 = load %struct.arch_uprobe*, %struct.arch_uprobe** %3, align 8
  %18 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %19 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %18, i32 0, i32 1
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = call i32 %16(%struct.arch_uprobe* %17, %struct.TYPE_5__* %19, %struct.pt_regs* %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %28 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @UPROBE_TRAP_NR, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %35 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
