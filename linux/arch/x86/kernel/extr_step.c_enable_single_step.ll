; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_enable_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_enable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64 }

@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@X86_EFLAGS_TF = common dso_local global i64 0, align 8
@TIF_FORCED_TF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @enable_single_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %6)
  store %struct.pt_regs* %7, %struct.pt_regs** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = load i32, i32* @TIF_SINGLESTEP, align 4
  %10 = call i32 @test_tsk_thread_flag(%struct.task_struct* %8, i32 %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i64, i64* @X86_EFLAGS_TF, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = or i64 %17, %14
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = load i32, i32* @TIF_SINGLESTEP, align 4
  %22 = call i32 @set_tsk_thread_flag(%struct.task_struct* %20, i32 %21)
  %23 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* @X86_EFLAGS_TF, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = call i64 @is_setting_trap_flag(%struct.task_struct* %31, %struct.pt_regs* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = load i32, i32* @TIF_FORCED_TF, align 4
  %38 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %36, i32 %37)
  store i32 0, i32* %2, align 4
  br label %52

39:                                               ; preds = %19
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @X86_EFLAGS_TF, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = load i32, i32* @TIF_FORCED_TF, align 4
  %47 = call i32 @test_tsk_thread_flag(%struct.task_struct* %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = load i32, i32* @TIF_FORCED_TF, align 4
  %51 = call i32 @set_tsk_thread_flag(%struct.task_struct* %49, i32 %50)
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %44, %35
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @is_setting_trap_flag(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
