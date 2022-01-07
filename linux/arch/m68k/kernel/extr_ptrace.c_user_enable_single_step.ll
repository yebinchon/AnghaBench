; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_ptrace.c_user_enable_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_ptrace.c_user_enable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@PT_SR = common dso_local global i32 0, align 4
@TRACE_BITS = common dso_local global i64 0, align 8
@T1_BIT = common dso_local global i64 0, align 8
@TIF_DELAYED_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_enable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = load i32, i32* @PT_SR, align 4
  %6 = call i64 @get_reg(%struct.task_struct* %4, i32 %5)
  %7 = load i64, i64* @TRACE_BITS, align 8
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = load i32, i32* @PT_SR, align 4
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @T1_BIT, align 8
  %14 = or i64 %12, %13
  %15 = call i32 @put_reg(%struct.task_struct* %10, i32 %11, i64 %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %17 = load i32, i32* @TIF_DELAYED_TRACE, align 4
  %18 = call i32 @set_tsk_thread_flag(%struct.task_struct* %16, i32 %17)
  ret void
}

declare dso_local i64 @get_reg(%struct.task_struct*, i32) #1

declare dso_local i32 @put_reg(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
