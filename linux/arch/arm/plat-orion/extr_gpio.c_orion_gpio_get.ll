; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.orion_gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @orion_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.orion_gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.orion_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.orion_gpio_chip* %8, %struct.orion_gpio_chip** %5, align 8
  %9 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %5, align 8
  %10 = call i32 @GPIO_IO_CONF(%struct.orion_gpio_chip* %9)
  %11 = call i32 @readl(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %5, align 8
  %18 = call i32 @GPIO_DATA_IN(%struct.orion_gpio_chip* %17)
  %19 = call i32 @readl(i32 %18)
  %20 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %5, align 8
  %21 = call i32 @GPIO_IN_POL(%struct.orion_gpio_chip* %20)
  %22 = call i32 @readl(i32 %21)
  %23 = xor i32 %19, %22
  store i32 %23, i32* %6, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %5, align 8
  %26 = call i32 @GPIO_OUT(%struct.orion_gpio_chip* %25)
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 1
  ret i32 %32
}

declare dso_local %struct.orion_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GPIO_IO_CONF(%struct.orion_gpio_chip*) #1

declare dso_local i32 @GPIO_DATA_IN(%struct.orion_gpio_chip*) #1

declare dso_local i32 @GPIO_IN_POL(%struct.orion_gpio_chip*) #1

declare dso_local i32 @GPIO_OUT(%struct.orion_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
