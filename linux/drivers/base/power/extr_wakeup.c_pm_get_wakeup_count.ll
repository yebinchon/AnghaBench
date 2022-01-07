; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_pm_get_wakeup_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_pm_get_wakeup_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wait = common dso_local global i32 0, align 4
@wakeup_count_wait_queue = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_get_wakeup_count(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  br label %12

12:                                               ; preds = %23, %9
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @prepare_to_wait(i32* @wakeup_count_wait_queue, i32* @wait, i32 %13)
  %15 = call i32 @split_counters(i32* %5, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @current, align 4
  %20 = call i64 @signal_pending(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %12
  br label %26

23:                                               ; preds = %18
  %24 = call i32 (...) @pm_print_active_wakeup_sources()
  %25 = call i32 (...) @schedule()
  br label %12

26:                                               ; preds = %22
  %27 = call i32 @finish_wait(i32* @wakeup_count_wait_queue, i32* @wait)
  br label %28

28:                                               ; preds = %26, %2
  %29 = call i32 @split_counters(i32* %5, i32* %6)
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %3, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @split_counters(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @pm_print_active_wakeup_sources(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
