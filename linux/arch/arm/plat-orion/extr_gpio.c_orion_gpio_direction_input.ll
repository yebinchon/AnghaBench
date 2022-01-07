; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.orion_gpio_chip = type { i32 }

@GPIO_INPUT_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @orion_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.orion_gpio_chip*, align 8
  %7 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.orion_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.orion_gpio_chip* %9, %struct.orion_gpio_chip** %6, align 8
  %10 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GPIO_INPUT_OK, align 4
  %13 = call i32 @orion_gpio_is_valid(%struct.orion_gpio_chip* %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.orion_gpio_chip, %struct.orion_gpio_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @__set_direction(%struct.orion_gpio_chip* %23, i32 %24, i32 1)
  %26 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %6, align 8
  %27 = getelementptr inbounds %struct.orion_gpio_chip, %struct.orion_gpio_chip* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.orion_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @orion_gpio_is_valid(%struct.orion_gpio_chip*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_direction(%struct.orion_gpio_chip*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
