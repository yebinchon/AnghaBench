; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_core.c_ep93xx_pwm_release_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_core.c_ep93xx_pwm_release_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@EP93XX_GPIO_LINE_EGPIO14 = common dso_local global i32 0, align 4
@EP93XX_SYSCON_DEVCFG_PONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep93xx_pwm_release_gpio(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @EP93XX_GPIO_LINE_EGPIO14, align 4
  %9 = call i32 @gpio_direction_input(i32 %8)
  %10 = load i32, i32* @EP93XX_GPIO_LINE_EGPIO14, align 4
  %11 = call i32 @gpio_free(i32 %10)
  %12 = load i32, i32* @EP93XX_SYSCON_DEVCFG_PONG, align 4
  %13 = call i32 @ep93xx_devcfg_clear_bits(i32 %12)
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @ep93xx_devcfg_clear_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
