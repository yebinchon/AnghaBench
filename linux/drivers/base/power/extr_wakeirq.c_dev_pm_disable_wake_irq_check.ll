; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_disable_wake_irq_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_disable_wake_irq_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wake_irq* }
%struct.wake_irq = type { i32, i32 }

@WAKE_IRQ_DEDICATED_MASK = common dso_local global i32 0, align 4
@WAKE_IRQ_DEDICATED_MANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_pm_disable_wake_irq_check(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.wake_irq*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  store %struct.wake_irq* %7, %struct.wake_irq** %3, align 8
  %8 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %9 = icmp ne %struct.wake_irq* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %12 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WAKE_IRQ_DEDICATED_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  br label %30

18:                                               ; preds = %10
  %19 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %20 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WAKE_IRQ_DEDICATED_MANAGED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %27 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @disable_irq_nosync(i32 %28)
  br label %30

30:                                               ; preds = %17, %25, %18
  ret void
}

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
