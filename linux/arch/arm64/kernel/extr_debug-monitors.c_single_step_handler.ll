; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_single_step_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_single_step_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@DBG_HOOK_HANDLED = common dso_local global i64 0, align 8
@TRAP_TRACE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unexpected kernel single-step exception at EL1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @single_step_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @single_step_handler(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %10 = call i32 @reinstall_suspended_bps(%struct.pt_regs* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @call_step_hook(%struct.pt_regs* %17, i32 %18)
  %20 = load i64, i64* @DBG_HOOK_HANDLED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %16, %13
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %28 = call i64 @user_mode(%struct.pt_regs* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @TRAP_TRACE, align 4
  %32 = call i32 @send_user_sigtrap(i32 %31)
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @user_rewind_single_step(i32 %33)
  br label %43

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %41 = call i32 @set_regs_spsr_ss(%struct.pt_regs* %40)
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42, %30
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @reinstall_suspended_bps(%struct.pt_regs*) #1

declare dso_local i64 @call_step_hook(%struct.pt_regs*, i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @send_user_sigtrap(i32) #1

declare dso_local i32 @user_rewind_single_step(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @set_regs_spsr_ss(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
