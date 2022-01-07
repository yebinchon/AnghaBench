; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_pm-gpio.c_samsung_pm_restore_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_pm-gpio.c_samsung_pm_restore_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_gpio_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@S3C_GPIO_END = common dso_local global i32 0, align 4
@CONFIG_S3C_GPIO_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @samsung_pm_restore_gpios() #0 {
  %1 = alloca %struct.samsung_gpio_chip*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %15, %12, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @S3C_GPIO_END, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.samsung_gpio_chip* @samsung_gpiolib_getchip(i32 %8)
  store %struct.samsung_gpio_chip* %9, %struct.samsung_gpio_chip** %1, align 8
  %10 = load %struct.samsung_gpio_chip*, %struct.samsung_gpio_chip** %1, align 8
  %11 = icmp ne %struct.samsung_gpio_chip* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %3

15:                                               ; preds = %7
  %16 = load %struct.samsung_gpio_chip*, %struct.samsung_gpio_chip** %1, align 8
  %17 = call i32 @samsung_pm_resume_gpio(%struct.samsung_gpio_chip* %16)
  %18 = load %struct.samsung_gpio_chip*, %struct.samsung_gpio_chip** %1, align 8
  %19 = getelementptr inbounds %struct.samsung_gpio_chip, %struct.samsung_gpio_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %2, align 4
  %26 = load i64, i64* @CONFIG_S3C_GPIO_SPACE, align 8
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %3

31:                                               ; preds = %3
  ret void
}

declare dso_local %struct.samsung_gpio_chip* @samsung_gpiolib_getchip(i32) #1

declare dso_local i32 @samsung_pm_resume_gpio(%struct.samsung_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
