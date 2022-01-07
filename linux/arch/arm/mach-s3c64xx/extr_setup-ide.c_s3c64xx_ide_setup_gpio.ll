; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_setup-ide.c_s3c64xx_ide_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_setup-ide.c_s3c64xx_ide_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C_MEM_SYS_CFG = common dso_local global i32 0, align 4
@MEM_SYS_CFG_INDEP_CF = common dso_local global i32 0, align 4
@MEM_SYS_CFG_EBI_FIX_PRI_CFCON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c64xx_ide_setup_gpio() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @S3C_MEM_SYS_CFG, align 4
  %3 = call i32 @readl(i32 %2)
  %4 = and i32 %3, -64
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MEM_SYS_CFG_INDEP_CF, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MEM_SYS_CFG_EBI_FIX_PRI_CFCON, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @S3C_MEM_SYS_CFG, align 4
  %11 = call i32 @writel(i32 %9, i32 %10)
  %12 = call i32 @S3C64XX_GPB(i32 4)
  %13 = call i32 @S3C_GPIO_SFN(i32 4)
  %14 = call i32 @s3c_gpio_cfgpin(i32 %12, i32 %13)
  %15 = call i32 @S3C64XX_GPK(i32 0)
  %16 = call i32 @S3C_GPIO_SFN(i32 5)
  %17 = call i32 @s3c_gpio_cfgpin_range(i32 %15, i32 16, i32 %16)
  %18 = call i32 @S3C64XX_GPL(i32 0)
  %19 = call i32 @S3C_GPIO_SFN(i32 6)
  %20 = call i32 @s3c_gpio_cfgpin_range(i32 %18, i32 3, i32 %19)
  %21 = call i32 @S3C64XX_GPM(i32 5)
  %22 = call i32 @S3C_GPIO_SFN(i32 1)
  %23 = call i32 @s3c_gpio_cfgpin(i32 %21, i32 %22)
  %24 = call i32 @S3C64XX_GPM(i32 0)
  %25 = call i32 @S3C_GPIO_SFN(i32 6)
  %26 = call i32 @s3c_gpio_cfgpin_range(i32 %24, i32 5, i32 %25)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C64XX_GPB(i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin_range(i32, i32, i32) #1

declare dso_local i32 @S3C64XX_GPK(i32) #1

declare dso_local i32 @S3C64XX_GPL(i32) #1

declare dso_local i32 @S3C64XX_GPM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
