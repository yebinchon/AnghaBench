; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_attach_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_attach_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wake_irq* }
%struct.wake_irq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wake irq already initialized\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.wake_irq*)* @dev_pm_attach_wake_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_pm_attach_wake_irq(%struct.device* %0, i32 %1, %struct.wake_irq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wake_irq*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wake_irq* %2, %struct.wake_irq** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.wake_irq*, %struct.wake_irq** %7, align 8
  %13 = icmp ne %struct.wake_irq* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %51

17:                                               ; preds = %11
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.wake_irq*, %struct.wake_irq** %26, align 8
  %28 = call i64 @dev_WARN_ONCE(%struct.device* %23, %struct.wake_irq* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %51

38:                                               ; preds = %17
  %39 = load %struct.wake_irq*, %struct.wake_irq** %7, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.wake_irq* %39, %struct.wake_irq** %42, align 8
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.wake_irq*, %struct.wake_irq** %7, align 8
  %45 = call i32 @device_wakeup_attach_irq(%struct.device* %43, %struct.wake_irq* %44)
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %38, %30, %14
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @dev_WARN_ONCE(%struct.device*, %struct.wake_irq*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_wakeup_attach_irq(%struct.device*, %struct.wake_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
