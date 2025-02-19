; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_cpuidle.c_s3c64xx_enter_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_cpuidle.c_s3c64xx_enter_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@S3C64XX_PWR_CFG = common dso_local global i32 0, align 4
@S3C64XX_PWRCFG_CFG_WFI_MASK = common dso_local global i64 0, align 8
@S3C64XX_PWRCFG_CFG_WFI_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @s3c64xx_enter_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_enter_idle(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @S3C64XX_PWR_CFG, align 4
  %9 = call i64 @__raw_readl(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @S3C64XX_PWRCFG_CFG_WFI_MASK, align 8
  %11 = xor i64 %10, -1
  %12 = load i64, i64* %7, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @S3C64XX_PWRCFG_CFG_WFI_IDLE, align 8
  %15 = load i64, i64* %7, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @S3C64XX_PWR_CFG, align 4
  %19 = call i32 @__raw_writel(i64 %17, i32 %18)
  %20 = call i32 (...) @cpu_do_idle()
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @cpu_do_idle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
