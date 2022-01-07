; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_set_task_blockstep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_set_task_blockstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@DEBUGCTLMSR_BTF = common dso_local global i64 0, align 8
@TIF_BLOCKSTEP = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_task_blockstep(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @local_irq_disable()
  %7 = call i64 (...) @get_debugctlmsr()
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %12 = load i64, i64* %5, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %16 = call i32 @set_tsk_thread_flag(%struct.task_struct* %14, i32 %15)
  br label %25

17:                                               ; preds = %2
  %18 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %24 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %10
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %28 = icmp eq %struct.task_struct* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @update_debugctlmsr(i64 %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @get_debugctlmsr(...) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @update_debugctlmsr(i64) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
