; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_dsmg600-setup.c_dsmg600_power_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_dsmg600-setup.c_dsmg600_power_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@DSMG600_PB_GPIO = common dso_local global i32 0, align 4
@power_button_countdown = common dso_local global i64 0, align 8
@DSMG600_LED_PWR_GPIO = common dso_local global i32 0, align 4
@PBUTTON_HOLDDOWN_COUNT = common dso_local global i64 0, align 8
@dsmg600_power_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dsmg600_power_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsmg600_power_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i32, i32* @DSMG600_PB_GPIO, align 4
  %4 = call i64 @gpio_get_value(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i64, i64* @power_button_countdown, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i64, i64* @power_button_countdown, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @power_button_countdown, align 8
  br label %12

12:                                               ; preds = %9, %6
  br label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @power_button_countdown, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = call i32 (...) @ctrl_alt_del()
  %18 = load i32, i32* @DSMG600_LED_PWR_GPIO, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 0)
  br label %22

20:                                               ; preds = %13
  %21 = load i64, i64* @PBUTTON_HOLDDOWN_COUNT, align 8
  store i64 %21, i64* @power_button_countdown, align 8
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i64, i64* @jiffies, align 8
  %25 = call i64 @msecs_to_jiffies(i32 500)
  %26 = add nsw i64 %24, %25
  %27 = call i32 @mod_timer(i32* @dsmg600_power_timer, i64 %26)
  ret void
}

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @ctrl_alt_del(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
