; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_enable_wake_irq_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_enable_wake_irq_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wake_irq* }
%struct.wake_irq = type { i32, i32 }

@WAKE_IRQ_DEDICATED_MASK = common dso_local global i32 0, align 4
@WAKE_IRQ_DEDICATED_MANAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_pm_enable_wake_irq_check(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wake_irq*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wake_irq*, %struct.wake_irq** %8, align 8
  store %struct.wake_irq* %9, %struct.wake_irq** %5, align 8
  %10 = load %struct.wake_irq*, %struct.wake_irq** %5, align 8
  %11 = icmp ne %struct.wake_irq* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.wake_irq*, %struct.wake_irq** %5, align 8
  %14 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WAKE_IRQ_DEDICATED_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  br label %45

20:                                               ; preds = %12
  %21 = load %struct.wake_irq*, %struct.wake_irq** %5, align 8
  %22 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WAKE_IRQ_DEDICATED_MANAGED, align 4
  %25 = and i32 %23, %24
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %40

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @WAKE_IRQ_DEDICATED_MANAGED, align 4
  %34 = load %struct.wake_irq*, %struct.wake_irq** %5, align 8
  %35 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %40

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  br label %45

40:                                               ; preds = %32, %28
  %41 = load %struct.wake_irq*, %struct.wake_irq** %5, align 8
  %42 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @enable_irq(i32 %43)
  br label %45

45:                                               ; preds = %40, %39, %19
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
