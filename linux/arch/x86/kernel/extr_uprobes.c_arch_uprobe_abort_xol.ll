; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_arch_uprobe_abort_xol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_arch_uprobe_abort_xol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.uprobe_task* }
%struct.TYPE_6__ = type { i32 }
%struct.uprobe_task = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.arch_uprobe = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.arch_uprobe*, %struct.pt_regs*)* }
%struct.pt_regs = type { i32, i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@X86_EFLAGS_TF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_uprobe_abort_xol(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.arch_uprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.uprobe_task*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.uprobe_task*, %struct.uprobe_task** %7, align 8
  store %struct.uprobe_task* %8, %struct.uprobe_task** %5, align 8
  %9 = load %struct.arch_uprobe*, %struct.arch_uprobe** %3, align 8
  %10 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32 (%struct.arch_uprobe*, %struct.pt_regs*)*, i32 (%struct.arch_uprobe*, %struct.pt_regs*)** %12, align 8
  %14 = icmp ne i32 (%struct.arch_uprobe*, %struct.pt_regs*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.arch_uprobe*, %struct.arch_uprobe** %3, align 8
  %17 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.arch_uprobe*, %struct.pt_regs*)*, i32 (%struct.arch_uprobe*, %struct.pt_regs*)** %19, align 8
  %21 = load %struct.arch_uprobe*, %struct.arch_uprobe** %3, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = call i32 %20(%struct.arch_uprobe* %21, %struct.pt_regs* %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %26 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %33 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %38 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* @X86_EFLAGS_TF, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
