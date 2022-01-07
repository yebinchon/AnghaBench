; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_core.c_ep93xx_ide_release_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_core.c_ep93xx_ide_release_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@EP93XX_GPIO_LINE_EGPIO15 = common dso_local global i32 0, align 4
@EP93XX_GPIO_LINE_EGPIO2 = common dso_local global i32 0, align 4
@EP93XX_SYSCON_DEVCFG_EONIDE = common dso_local global i32 0, align 4
@EP93XX_SYSCON_DEVCFG_GONIDE = common dso_local global i32 0, align 4
@EP93XX_SYSCON_DEVCFG_HONIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep93xx_ide_release_gpio(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 2, i32* %3, align 4
  br label %4

4:                                                ; preds = %11, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @EP93XX_GPIO_LINE_E(i32 %8)
  %10 = call i32 @gpio_free(i32 %9)
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %4

14:                                               ; preds = %4
  store i32 4, i32* %3, align 4
  br label %15

15:                                               ; preds = %22, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @EP93XX_GPIO_LINE_G(i32 %19)
  %21 = call i32 @gpio_free(i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %15

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %33, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @EP93XX_GPIO_LINE_H(i32 %30)
  %32 = call i32 @gpio_free(i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load i32, i32* @EP93XX_GPIO_LINE_EGPIO15, align 4
  %38 = call i32 @gpio_free(i32 %37)
  %39 = load i32, i32* @EP93XX_GPIO_LINE_EGPIO2, align 4
  %40 = call i32 @gpio_free(i32 %39)
  %41 = load i32, i32* @EP93XX_SYSCON_DEVCFG_EONIDE, align 4
  %42 = load i32, i32* @EP93XX_SYSCON_DEVCFG_GONIDE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @EP93XX_SYSCON_DEVCFG_HONIDE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ep93xx_devcfg_set_bits(i32 %45)
  ret void
}

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @EP93XX_GPIO_LINE_E(i32) #1

declare dso_local i32 @EP93XX_GPIO_LINE_G(i32) #1

declare dso_local i32 @EP93XX_GPIO_LINE_H(i32) #1

declare dso_local i32 @ep93xx_devcfg_set_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
