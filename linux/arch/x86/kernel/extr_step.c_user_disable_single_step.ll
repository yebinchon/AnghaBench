; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_user_disable_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_user_disable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TIF_BLOCKSTEP = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@TIF_FORCED_TF = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_disable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %4 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %5 = call i64 @test_tsk_thread_flag(%struct.task_struct* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = call i32 @set_task_blockstep(%struct.task_struct* %8, i32 0)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = load i32, i32* @TIF_SINGLESTEP, align 4
  %13 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %11, i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = load i32, i32* @TIF_FORCED_TF, align 4
  %16 = call i64 @test_and_clear_tsk_thread_flag(%struct.task_struct* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load i32, i32* @X86_EFLAGS_TF, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = call %struct.TYPE_2__* @task_pt_regs(%struct.task_struct* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %18, %10
  ret void
}

declare dso_local i64 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @set_task_blockstep(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @test_and_clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local %struct.TYPE_2__* @task_pt_regs(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
