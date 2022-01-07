; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uprobe_post_xol.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uprobe_post_xol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.uprobe_task* }
%struct.TYPE_5__ = type { i64 }
%struct.uprobe_task = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.arch_uprobe = type { i32 }
%struct.pt_regs = type { i64 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@UPROBE_TRAP_NR = common dso_local global i64 0, align 8
@MAX_UINSN_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_post_xol(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.arch_uprobe*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.uprobe_task*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.uprobe_task*, %struct.uprobe_task** %7, align 8
  store %struct.uprobe_task* %8, %struct.uprobe_task** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UPROBE_TRAP_NR, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %18 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.uprobe_task*, %struct.uprobe_task** %5, align 8
  %25 = getelementptr inbounds %struct.uprobe_task, %struct.uprobe_task* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_UINSN_BYTES, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %32 = call i32 @user_disable_single_step(%struct.TYPE_7__* %31)
  ret i32 0
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @user_disable_single_step(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
