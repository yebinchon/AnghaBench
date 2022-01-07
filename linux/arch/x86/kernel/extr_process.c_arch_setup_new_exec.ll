; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_arch_setup_new_exec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_arch_setup_new_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TIF_NOCPUID = common dso_local global i32 0, align 4
@TIF_SSBD = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_setup_new_exec() #0 {
  %1 = load i32, i32* @TIF_NOCPUID, align 4
  %2 = call i64 @test_thread_flag(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @enable_cpuid()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @TIF_SSBD, align 4
  %8 = call i64 @test_thread_flag(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i32, i32* @current, align 4
  %12 = call i64 @task_spec_ssb_noexec(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32, i32* @TIF_SSBD, align 4
  %16 = call i32 @clear_thread_flag(i32 %15)
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @task_clear_spec_ssb_disable(i32 %17)
  %19 = load i32, i32* @current, align 4
  %20 = call i32 @task_clear_spec_ssb_noexec(i32 %19)
  %21 = load i32, i32* @current, align 4
  %22 = call %struct.TYPE_2__* @task_thread_info(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @speculation_ctrl_update(i32 %24)
  br label %26

26:                                               ; preds = %14, %10, %6
  ret void
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @enable_cpuid(...) #1

declare dso_local i64 @task_spec_ssb_noexec(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @task_clear_spec_ssb_disable(i32) #1

declare dso_local i32 @task_clear_spec_ssb_noexec(i32) #1

declare dso_local i32 @speculation_ctrl_update(i32) #1

declare dso_local %struct.TYPE_2__* @task_thread_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
