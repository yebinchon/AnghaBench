; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_uprobes.c_arch_uprobe_abort_xol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_uprobes.c_arch_uprobe_abort_xol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.uprobe_task* }
%struct.uprobe_task = type { i32 }
%struct.arch_uprobe = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_uprobe_abort_xol(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.arch_uprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.uprobe_task*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.uprobe_task*, %struct.uprobe_task** %7, align 8
  store %struct.uprobe_task* %8, %struct.uprobe_task** %5, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %11 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @instruction_pointer_set(%struct.pt_regs* %9, i32 %12)
  ret void
}

declare dso_local i32 @instruction_pointer_set(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
