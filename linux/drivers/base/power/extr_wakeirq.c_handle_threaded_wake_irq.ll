; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_handle_threaded_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_handle_threaded_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wake_irq = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wake IRQ with no resume: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @handle_threaded_wake_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_threaded_wake_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wake_irq*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.wake_irq*
  store %struct.wake_irq* %9, %struct.wake_irq** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @irq_get_irq_data(i32 %10)
  %12 = call i64 @irqd_is_wakeup_set(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %16 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_wakeup_event(i32 %17, i32 0)
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %22 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_resume(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %29 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @irqd_is_wakeup_set(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @pm_runtime_resume(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
