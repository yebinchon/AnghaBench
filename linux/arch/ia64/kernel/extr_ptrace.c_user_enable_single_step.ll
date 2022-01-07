; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_user_enable_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_ptrace.c_user_enable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.ia64_psr = type { i32 }

@TIF_SINGLESTEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_enable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.ia64_psr*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call i32 @task_pt_regs(%struct.task_struct* %4)
  %6 = call %struct.ia64_psr* @ia64_psr(i32 %5)
  store %struct.ia64_psr* %6, %struct.ia64_psr** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = load i32, i32* @TIF_SINGLESTEP, align 4
  %9 = call i32 @set_tsk_thread_flag(%struct.task_struct* %7, i32 %8)
  %10 = load %struct.ia64_psr*, %struct.ia64_psr** %3, align 8
  %11 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  ret void
}

declare dso_local %struct.ia64_psr* @ia64_psr(i32) #1

declare dso_local i32 @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
