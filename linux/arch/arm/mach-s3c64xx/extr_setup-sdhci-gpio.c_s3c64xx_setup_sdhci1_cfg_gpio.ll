; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_setup-sdhci-gpio.c_s3c64xx_setup_sdhci1_cfg_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_setup-sdhci-gpio.c_s3c64xx_setup_sdhci1_cfg_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s3c_sdhci_platdata* }
%struct.s3c_sdhci_platdata = type { i64 }

@S3C_SDHCI_CD_INTERNAL = common dso_local global i64 0, align 8
@S3C_GPIO_PULL_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c64xx_setup_sdhci1_cfg_gpio(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c_sdhci_platdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %8, align 8
  store %struct.s3c_sdhci_platdata* %9, %struct.s3c_sdhci_platdata** %5, align 8
  %10 = call i32 @S3C64XX_GPH(i32 0)
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 2, %11
  %13 = call i32 @S3C_GPIO_SFN(i32 2)
  %14 = call i32 @s3c_gpio_cfgrange_nopull(i32 %10, i32 %12, i32 %13)
  %15 = load %struct.s3c_sdhci_platdata*, %struct.s3c_sdhci_platdata** %5, align 8
  %16 = getelementptr inbounds %struct.s3c_sdhci_platdata, %struct.s3c_sdhci_platdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @S3C_SDHCI_CD_INTERNAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = call i32 @S3C64XX_GPG(i32 6)
  %22 = load i32, i32* @S3C_GPIO_PULL_UP, align 4
  %23 = call i32 @s3c_gpio_setpull(i32 %21, i32 %22)
  %24 = call i32 @S3C64XX_GPG(i32 6)
  %25 = call i32 @S3C_GPIO_SFN(i32 3)
  %26 = call i32 @s3c_gpio_cfgpin(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @s3c_gpio_cfgrange_nopull(i32, i32, i32) #1

declare dso_local i32 @S3C64XX_GPH(i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

declare dso_local i32 @S3C64XX_GPG(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
