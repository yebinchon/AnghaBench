; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/spi/extr_spi-rb4xx-cpld.c_rb4xx_cpld_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.rb4xx_cpld = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @rb4xx_cpld_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb4xx_cpld_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rb4xx_cpld*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.rb4xx_cpld* @gpio_to_cpld(%struct.gpio_chip* %9)
  store %struct.rb4xx_cpld* %10, %struct.rb4xx_cpld** %7, align 8
  %11 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %7, align 8
  %12 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @__rb4xx_cpld_change_cfg(%struct.rb4xx_cpld* %14, i32 %16, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rb4xx_cpld*, %struct.rb4xx_cpld** %7, align 8
  %26 = getelementptr inbounds %struct.rb4xx_cpld, %struct.rb4xx_cpld* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local %struct.rb4xx_cpld* @gpio_to_cpld(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__rb4xx_cpld_change_cfg(%struct.rb4xx_cpld*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
