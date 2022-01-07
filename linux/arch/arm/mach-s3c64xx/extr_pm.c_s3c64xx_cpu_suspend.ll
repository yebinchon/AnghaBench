; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_pm.c_s3c64xx_cpu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_pm.c_s3c64xx_cpu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C64XX_PWR_CFG = common dso_local global i32 0, align 4
@S3C64XX_PWRCFG_CFG_WFI_MASK = common dso_local global i64 0, align 8
@S3C64XX_PWRCFG_CFG_WFI_SLEEP = common dso_local global i64 0, align 8
@S3C64XX_WAKEUP_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to suspend the system\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @s3c64xx_cpu_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_cpu_suspend(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @S3C64XX_PWR_CFG, align 4
  %5 = call i64 @__raw_readl(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @S3C64XX_PWRCFG_CFG_WFI_MASK, align 8
  %7 = xor i64 %6, -1
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, %7
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @S3C64XX_PWRCFG_CFG_WFI_SLEEP, align 8
  %11 = load i64, i64* %3, align 8
  %12 = or i64 %11, %10
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* @S3C64XX_PWR_CFG, align 4
  %15 = call i32 @__raw_writel(i64 %13, i32 %14)
  %16 = load i32, i32* @S3C64XX_WAKEUP_STAT, align 4
  %17 = call i64 @__raw_readl(i32 %16)
  %18 = load i32, i32* @S3C64XX_WAKEUP_STAT, align 4
  %19 = call i32 @__raw_writel(i64 %17, i32 %18)
  %20 = call i32 @s3c_pm_debug_smdkled(i32 6, i32 15)
  store i64 0, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  call void asm sideeffect "b 1f\0A\09.align 5\0A\091:\0A\09mcr p15, 0, $0, c7, c10, 5\0A\09mcr p15, 0, $0, c7, c10, 4\0A\09mcr p15, 0, $0, c7, c0, 4", "r,~{dirflag},~{fpsr},~{flags}"(i64 %21) #2, !srcloc !2
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret i32 1
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @s3c_pm_debug_smdkled(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 798, i32 805, i32 825, i32 839, i32 877, i32 915}
