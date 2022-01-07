; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_disarm_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_disarm_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wake_irq = type { i32, i32, i32 }

@WAKE_IRQ_DEDICATED_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_pm_disarm_wake_irq(%struct.wake_irq* %0) #0 {
  %2 = alloca %struct.wake_irq*, align 8
  store %struct.wake_irq* %0, %struct.wake_irq** %2, align 8
  %3 = load %struct.wake_irq*, %struct.wake_irq** %2, align 8
  %4 = icmp ne %struct.wake_irq* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.wake_irq*, %struct.wake_irq** %2, align 8
  %8 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @device_may_wakeup(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load %struct.wake_irq*, %struct.wake_irq** %2, align 8
  %14 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @disable_irq_wake(i32 %15)
  %17 = load %struct.wake_irq*, %struct.wake_irq** %2, align 8
  %18 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WAKE_IRQ_DEDICATED_ALLOCATED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.wake_irq*, %struct.wake_irq** %2, align 8
  %25 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_status_suspended(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.wake_irq*, %struct.wake_irq** %2, align 8
  %31 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @disable_irq_nosync(i32 %32)
  br label %34

34:                                               ; preds = %29, %23, %12
  br label %35

35:                                               ; preds = %5, %34, %6
  ret void
}

declare dso_local i64 @device_may_wakeup(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @pm_runtime_status_suspended(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
