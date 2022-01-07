; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_ptrace_64.c_user_enable_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_ptrace_64.c_user_enable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pt_regs* }
%struct.pt_regs = type { i32 }

@SR_SSTEP = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_enable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  store %struct.pt_regs* %7, %struct.pt_regs** %3, align 8
  %8 = load i32, i32* @SR_SSTEP, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = load i32, i32* @TIF_SINGLESTEP, align 4
  %15 = call i32 @set_tsk_thread_flag(%struct.task_struct* %13, i32 %14)
  ret void
}

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
