; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_post_xol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_post_xol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.uprobe_task* }
%struct.uprobe_task = type { i64, i64, %struct.arch_uprobe_task }
%struct.arch_uprobe_task = type { i64 }
%struct.arch_uprobe = type { i32 }
%struct.pt_regs = type { i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@UTASK_SSTEP_ACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_post_xol(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.arch_uprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.uprobe_task*, align 8
  %6 = alloca %struct.arch_uprobe_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.uprobe_task*, %struct.uprobe_task** %10, align 8
  store %struct.uprobe_task* %11, %struct.uprobe_task** %5, align 8
  %12 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %13 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %12, i32 0, i32 2
  store %struct.arch_uprobe_task* %13, %struct.arch_uprobe_task** %6, align 8
  %14 = load %struct.arch_uprobe*, %struct.arch_uprobe** %3, align 8
  %15 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %18 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UTASK_SSTEP_ACK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = call i64 @relbranch_fixup(i32 %23, %struct.uprobe_task* %24, %struct.pt_regs* %25)
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.arch_uprobe_task*, %struct.arch_uprobe_task** %6, align 8
  %30 = getelementptr inbounds %struct.arch_uprobe_task, %struct.arch_uprobe_task* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %37 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @retpc_fixup(%struct.pt_regs* %34, i32 %35, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %42 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 4
  %45 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.arch_uprobe_task*, %struct.arch_uprobe_task** %6, align 8
  %48 = getelementptr inbounds %struct.arch_uprobe_task, %struct.arch_uprobe_task* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %40, %22
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i64 @relbranch_fixup(i32, %struct.uprobe_task*, %struct.pt_regs*) #1

declare dso_local i32 @retpc_fixup(%struct.pt_regs*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
