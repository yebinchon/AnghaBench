; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_clear_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_clear_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wake_irq* }
%struct.wake_irq = type { i32, %struct.wake_irq*, i32 }

@WAKE_IRQ_DEDICATED_ALLOCATED = common dso_local global i32 0, align 4
@WAKE_IRQ_DEDICATED_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_pm_clear_wake_irq(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.wake_irq*, align 8
  %4 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.wake_irq*, %struct.wake_irq** %7, align 8
  store %struct.wake_irq* %8, %struct.wake_irq** %3, align 8
  %9 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %10 = icmp ne %struct.wake_irq* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = call i32 @device_wakeup_detach_irq(%struct.device* %18)
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.wake_irq* null, %struct.wake_irq** %22, align 8
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %29 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @WAKE_IRQ_DEDICATED_ALLOCATED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %12
  %35 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %36 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %39 = call i32 @free_irq(i32 %37, %struct.wake_irq* %38)
  %40 = load i32, i32* @WAKE_IRQ_DEDICATED_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %43 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %34, %12
  %47 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %48 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %47, i32 0, i32 1
  %49 = load %struct.wake_irq*, %struct.wake_irq** %48, align 8
  %50 = call i32 @kfree(%struct.wake_irq* %49)
  %51 = load %struct.wake_irq*, %struct.wake_irq** %3, align 8
  %52 = call i32 @kfree(%struct.wake_irq* %51)
  br label %53

53:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @device_wakeup_detach_irq(%struct.device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.wake_irq*) #1

declare dso_local i32 @kfree(%struct.wake_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
