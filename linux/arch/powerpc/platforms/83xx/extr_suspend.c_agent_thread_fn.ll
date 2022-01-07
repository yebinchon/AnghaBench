; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_agent_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_agent_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@agent_wq = common dso_local global i32 0, align 4
@pci_pm_state = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@wake_from_pci = common dso_local global i32 0, align 4
@PM_SUSPEND_MEM = common dso_local global i32 0, align 4
@PM_SUSPEND_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @agent_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agent_thread_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %1, %16, %24
  %4 = load i32, i32* @agent_wq, align 4
  %5 = load i32, i32* @pci_pm_state, align 4
  %6 = icmp sge i32 %5, 2
  %7 = zext i1 %6 to i32
  %8 = call i32 @wait_event_interruptible(i32 %4, i32 %7)
  %9 = call i32 (...) @try_to_freeze()
  %10 = load i32, i32* @current, align 4
  %11 = call i64 @signal_pending(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @pci_pm_state, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  br label %3

17:                                               ; preds = %13
  store i32 1, i32* @wake_from_pci, align 4
  %18 = load i32, i32* @pci_pm_state, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @PM_SUSPEND_MEM, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @PM_SUSPEND_STANDBY, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @pm_suspend(i32 %25)
  store i32 0, i32* @wake_from_pci, align 4
  br label %3
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pm_suspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
