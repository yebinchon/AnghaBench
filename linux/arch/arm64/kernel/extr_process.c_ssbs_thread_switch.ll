; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_ssbs_thread_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_ssbs_thread_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@ARM64_SSBD_FORCE_ENABLE = common dso_local global i64 0, align 8
@TIF_SSBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @ssbs_thread_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssbs_thread_switch(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %4)
  store %struct.pt_regs* %5, %struct.pt_regs** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PF_KTHREAD, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %39

14:                                               ; preds = %1
  %15 = call i64 (...) @arm64_get_ssbd_state()
  %16 = load i64, i64* @ARM64_SSBD_FORCE_ENABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = load i32, i32* @TIF_SSBD, align 4
  %21 = call i64 @test_tsk_thread_flag(%struct.task_struct* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %14
  br label %39

24:                                               ; preds = %18
  %25 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %26 = call i64 @compat_user_mode(%struct.pt_regs* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %30 = call i32 @set_compat_ssbs_bit(%struct.pt_regs* %29)
  br label %39

31:                                               ; preds = %24
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = call i64 @user_mode(%struct.pt_regs* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %37 = call i32 @set_ssbs_bit(%struct.pt_regs* %36)
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %13, %23, %38, %28
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @arm64_get_ssbd_state(...) #1

declare dso_local i64 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @compat_user_mode(%struct.pt_regs*) #1

declare dso_local i32 @set_compat_ssbs_bit(%struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @set_ssbs_bit(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
