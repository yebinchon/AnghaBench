; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_valid_user_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_valid_user_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pt_regs = type { i32 }
%struct.task_struct = type { i32 }

@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@DBG_SPSR_SS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_user_regs(%struct.user_pt_regs* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.user_pt_regs*, align 8
  %5 = alloca %struct.task_struct*, align 8
  store %struct.user_pt_regs* %0, %struct.user_pt_regs** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %7 = load i32, i32* @TIF_SINGLESTEP, align 4
  %8 = call i32 @test_tsk_thread_flag(%struct.task_struct* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @DBG_SPSR_SS, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.user_pt_regs*, %struct.user_pt_regs** %4, align 8
  %14 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = call i32 @task_thread_info(%struct.task_struct* %18)
  %20 = call i64 @is_compat_thread(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.user_pt_regs*, %struct.user_pt_regs** %4, align 8
  %24 = call i32 @valid_compat_regs(%struct.user_pt_regs* %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.user_pt_regs*, %struct.user_pt_regs** %4, align 8
  %27 = call i32 @valid_native_regs(%struct.user_pt_regs* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @is_compat_thread(i32) #1

declare dso_local i32 @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @valid_compat_regs(%struct.user_pt_regs*) #1

declare dso_local i32 @valid_native_regs(%struct.user_pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
