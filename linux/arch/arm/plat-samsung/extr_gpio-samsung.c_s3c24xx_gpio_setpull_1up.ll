; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_gpio-samsung.c_s3c24xx_gpio_setpull_1up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_gpio-samsung.c_s3c24xx_gpio_setpull_1up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_gpio_chip = type { i32 }

@S3C_GPIO_PULL_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c24xx_gpio_setpull_1up(%struct.samsung_gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.samsung_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.samsung_gpio_chip* %0, %struct.samsung_gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.samsung_gpio_chip*, %struct.samsung_gpio_chip** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @S3C_GPIO_PULL_UP, align 4
  %11 = call i32 @s3c24xx_gpio_setpull_1(%struct.samsung_gpio_chip* %7, i32 %8, i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @s3c24xx_gpio_setpull_1(%struct.samsung_gpio_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
