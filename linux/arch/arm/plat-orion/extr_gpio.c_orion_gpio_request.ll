; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.orion_gpio_chip = type { i32 }

@GPIO_INPUT_OK = common dso_local global i32 0, align 4
@GPIO_OUTPUT_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @orion_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.orion_gpio_chip*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = call %struct.orion_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %7)
  store %struct.orion_gpio_chip* %8, %struct.orion_gpio_chip** %6, align 8
  %9 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GPIO_INPUT_OK, align 4
  %12 = call i64 @orion_gpio_is_valid(%struct.orion_gpio_chip* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GPIO_OUTPUT_OK, align 4
  %18 = call i64 @orion_gpio_is_valid(%struct.orion_gpio_chip* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.orion_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @orion_gpio_is_valid(%struct.orion_gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
