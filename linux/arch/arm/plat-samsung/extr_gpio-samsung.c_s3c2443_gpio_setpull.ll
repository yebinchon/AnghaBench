; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_gpio-samsung.c_s3c2443_gpio_setpull.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_gpio-samsung.c_s3c2443_gpio_setpull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_gpio_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c2443_gpio_setpull(%struct.samsung_gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.samsung_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.samsung_gpio_chip* %0, %struct.samsung_gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %11 [
    i32 129, label %8
    i32 128, label %9
    i32 130, label %10
  ]

8:                                                ; preds = %3
  store i32 1, i32* %6, align 4
  br label %11

9:                                                ; preds = %3
  store i32 0, i32* %6, align 4
  br label %11

10:                                               ; preds = %3
  store i32 2, i32* %6, align 4
  br label %11

11:                                               ; preds = %3, %10, %9, %8
  %12 = load %struct.samsung_gpio_chip*, %struct.samsung_gpio_chip** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @samsung_gpio_setpull_updown(%struct.samsung_gpio_chip* %12, i32 %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @samsung_gpio_setpull_updown(%struct.samsung_gpio_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
