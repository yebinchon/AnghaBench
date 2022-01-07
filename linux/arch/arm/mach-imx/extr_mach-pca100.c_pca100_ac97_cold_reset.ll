; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-pca100.c_pca100_ac97_cold_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-pca100.c_pca100_ac97_cold_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@GPIO_PORTC = common dso_local global i32 0, align 4
@GPIO_GPIO = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@PC20_PF_SSI1_FS = common dso_local global i32 0, align 4
@PC22_PF_SSI1_TXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @pca100_ac97_cold_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca100_ac97_cold_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %3 = load i32, i32* @GPIO_PORTC, align 4
  %4 = or i32 %3, 20
  %5 = load i32, i32* @GPIO_GPIO, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @GPIO_OUT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @mxc_gpio_mode(i32 %8)
  %10 = load i32, i32* @GPIO_PORTC, align 4
  %11 = add nsw i32 %10, 20
  %12 = call i32 @gpio_set_value(i32 %11, i32 0)
  %13 = load i32, i32* @GPIO_PORTC, align 4
  %14 = or i32 %13, 22
  %15 = load i32, i32* @GPIO_GPIO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GPIO_OUT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @mxc_gpio_mode(i32 %18)
  %20 = load i32, i32* @GPIO_PORTC, align 4
  %21 = add nsw i32 %20, 22
  %22 = call i32 @gpio_set_value(i32 %21, i32 0)
  %23 = load i32, i32* @GPIO_PORTC, align 4
  %24 = or i32 %23, 28
  %25 = load i32, i32* @GPIO_GPIO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GPIO_OUT, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @mxc_gpio_mode(i32 %28)
  %30 = load i32, i32* @GPIO_PORTC, align 4
  %31 = add nsw i32 %30, 28
  %32 = call i32 @gpio_set_value(i32 %31, i32 0)
  %33 = call i32 @udelay(i32 10)
  %34 = load i32, i32* @GPIO_PORTC, align 4
  %35 = add nsw i32 %34, 28
  %36 = call i32 @gpio_set_value(i32 %35, i32 1)
  %37 = load i32, i32* @PC20_PF_SSI1_FS, align 4
  %38 = call i32 @mxc_gpio_mode(i32 %37)
  %39 = load i32, i32* @PC22_PF_SSI1_TXD, align 4
  %40 = call i32 @mxc_gpio_mode(i32 %39)
  %41 = call i32 @msleep(i32 2)
  ret void
}

declare dso_local i32 @mxc_gpio_mode(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
