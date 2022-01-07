; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_pm.c_s3c64xx_pm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_pm.c_s3c64xx_pm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C64XX_PWR_CFG = common dso_local global i32 0, align 4
@wake_irqs = common dso_local global i32 0, align 4
@s3c_cpu_resume = common dso_local global i32 0, align 4
@S3C64XX_INFORM0 = common dso_local global i32 0, align 4
@S3C64XX_WAKEUP_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s3c64xx_pm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c64xx_pm_prepare() #0 {
  %1 = load i32, i32* @S3C64XX_PWR_CFG, align 4
  %2 = load i32, i32* @wake_irqs, align 4
  %3 = load i32, i32* @wake_irqs, align 4
  %4 = call i32 @ARRAY_SIZE(i32 %3)
  %5 = call i32 @samsung_sync_wakemask(i32 %1, i32 %2, i32 %4)
  %6 = load i32, i32* @s3c_cpu_resume, align 4
  %7 = call i32 @__pa_symbol(i32 %6)
  %8 = load i32, i32* @S3C64XX_INFORM0, align 4
  %9 = call i32 @__raw_writel(i32 %7, i32 %8)
  %10 = load i32, i32* @S3C64XX_WAKEUP_STAT, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  %12 = load i32, i32* @S3C64XX_WAKEUP_STAT, align 4
  %13 = call i32 @__raw_writel(i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @samsung_sync_wakemask(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
