; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uprobe_pre_xol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uprobe_pre_xol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.arch_uprobe_task }
%struct.arch_uprobe_task = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.arch_uprobe = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@UPROBE_TRAP_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_pre_xol(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.arch_uprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.arch_uprobe_task*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store %struct.arch_uprobe_task* %9, %struct.arch_uprobe_task** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.arch_uprobe_task*, %struct.arch_uprobe_task** %5, align 8
  %15 = getelementptr inbounds %struct.arch_uprobe_task, %struct.arch_uprobe_task* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @UPROBE_TRAP_NR, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %28 = call i32 @user_enable_single_step(%struct.TYPE_7__* %27)
  ret i32 0
}

declare dso_local i32 @user_enable_single_step(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
