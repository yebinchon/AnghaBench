; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }

@ORION_BLINK_HALF_PERIOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orion_gpio_led_blink_set(%struct.gpio_desc* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %11 = call i32 @desc_to_gpio(%struct.gpio_desc* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load i64*, i64** %8, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @ORION_BLINK_HALF_PERIOD, align 8
  %27 = load i64*, i64** %8, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %21, %17, %14, %4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %40 [
    i32 128, label %31
    i32 129, label %31
    i32 130, label %37
  ]

31:                                               ; preds = %29, %29
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @orion_gpio_set_blink(i32 %32, i32 0)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @gpio_set_value(i32 %34, i32 %35)
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @orion_gpio_set_blink(i32 %38, i32 1)
  br label %40

40:                                               ; preds = %37, %29, %31
  ret i32 0
}

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

declare dso_local i32 @orion_gpio_set_blink(i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
