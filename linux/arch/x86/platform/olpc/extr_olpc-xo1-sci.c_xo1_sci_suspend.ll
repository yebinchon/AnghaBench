; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_xo1_sci_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_xo1_sci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { i32 }

@power_button_idev = common dso_local global %struct.TYPE_4__* null, align 8
@CS5536_PM_PWRBTN = common dso_local global i32 0, align 4
@ebook_switch_idev = common dso_local global %struct.TYPE_6__* null, align 8
@EC_SCI_SRC_EBOOK = common dso_local global i32 0, align 4
@lid_switch_idev = common dso_local global %struct.TYPE_5__* null, align 8
@OLPC_GPIO_LID = common dso_local global i32 0, align 4
@GPIO_EVENTS_ENABLE = common dso_local global i32 0, align 4
@lid_open = common dso_local global i64 0, align 8
@lid_wake_mode = common dso_local global i64 0, align 8
@LID_WAKE_OPEN = common dso_local global i64 0, align 8
@LID_WAKE_CLOSE = common dso_local global i64 0, align 8
@GPIO_NEGATIVE_EDGE_STS = common dso_local global i32 0, align 4
@GPIO_POSITIVE_EDGE_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @xo1_sci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo1_sci_suspend(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @power_button_idev, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = call i64 @device_may_wakeup(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @CS5536_PM_PWRBTN, align 4
  %11 = call i32 @olpc_xo1_pm_wakeup_set(i32 %10)
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @CS5536_PM_PWRBTN, align 4
  %14 = call i32 @olpc_xo1_pm_wakeup_clear(i32 %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ebook_switch_idev, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i64 @device_may_wakeup(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EC_SCI_SRC_EBOOK, align 4
  %22 = call i32 @olpc_ec_wakeup_set(i32 %21)
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EC_SCI_SRC_EBOOK, align 4
  %25 = call i32 @olpc_ec_wakeup_clear(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lid_switch_idev, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i64 @device_may_wakeup(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @OLPC_GPIO_LID, align 4
  %33 = load i32, i32* @GPIO_EVENTS_ENABLE, align 4
  %34 = call i32 @cs5535_gpio_clear(i32 %32, i32 %33)
  br label %61

35:                                               ; preds = %26
  %36 = load i64, i64* @lid_open, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* @lid_wake_mode, align 8
  %40 = load i64, i64* @LID_WAKE_OPEN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* @lid_open, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @lid_wake_mode, align 8
  %47 = load i64, i64* @LID_WAKE_CLOSE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45, %38
  %50 = call i32 (...) @flip_lid_inverter()
  %51 = load i32, i32* @OLPC_GPIO_LID, align 4
  %52 = load i32, i32* @GPIO_NEGATIVE_EDGE_STS, align 4
  %53 = call i32 @cs5535_gpio_set(i32 %51, i32 %52)
  %54 = load i32, i32* @OLPC_GPIO_LID, align 4
  %55 = load i32, i32* @GPIO_POSITIVE_EDGE_STS, align 4
  %56 = call i32 @cs5535_gpio_set(i32 %54, i32 %55)
  %57 = load i32, i32* @OLPC_GPIO_LID, align 4
  %58 = load i32, i32* @GPIO_EVENTS_ENABLE, align 4
  %59 = call i32 @cs5535_gpio_set(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %49, %45, %42
  br label %61

61:                                               ; preds = %60, %31
  ret i32 0
}

declare dso_local i64 @device_may_wakeup(i32*) #1

declare dso_local i32 @olpc_xo1_pm_wakeup_set(i32) #1

declare dso_local i32 @olpc_xo1_pm_wakeup_clear(i32) #1

declare dso_local i32 @olpc_ec_wakeup_set(i32) #1

declare dso_local i32 @olpc_ec_wakeup_clear(i32) #1

declare dso_local i32 @cs5535_gpio_clear(i32, i32) #1

declare dso_local i32 @flip_lid_inverter(...) #1

declare dso_local i32 @cs5535_gpio_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
