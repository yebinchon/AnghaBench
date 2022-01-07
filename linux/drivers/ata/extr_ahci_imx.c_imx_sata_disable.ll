; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_sata_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_sata_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.imx_ahci_priv* }
%struct.imx_ahci_priv = type { i32, i32, i32, i32, i32, i64 }

@IOMUXC_GPR5 = common dso_local global i32 0, align 4
@IMX6Q_GPR5_SATA_SW_PD = common dso_local global i32 0, align 4
@IOMUXC_GPR13 = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_MPLL_CLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_host_priv*)* @imx_sata_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_sata_disable(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca %struct.ahci_host_priv*, align 8
  %3 = alloca %struct.imx_ahci_priv*, align 8
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %2, align 8
  %4 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %4, i32 0, i32 0
  %6 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  store %struct.imx_ahci_priv* %6, %struct.imx_ahci_priv** %3, align 8
  %7 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %8 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %14 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %54 [
    i32 129, label %16
    i32 130, label %34
    i32 128, label %45
  ]

16:                                               ; preds = %12
  %17 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %18 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IOMUXC_GPR5, align 4
  %21 = load i32, i32* @IMX6Q_GPR5_SATA_SW_PD, align 4
  %22 = load i32, i32* @IMX6Q_GPR5_SATA_SW_PD, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %25 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IOMUXC_GPR13, align 4
  %28 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_CLK_EN, align 4
  %29 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_CLK_EN, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %32)
  br label %55

34:                                               ; preds = %12
  %35 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %36 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IOMUXC_GPR13, align 4
  %39 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_CLK_EN, align 4
  %40 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_CLK_EN, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %43)
  br label %55

45:                                               ; preds = %12
  %46 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %47 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %51 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  br label %55

54:                                               ; preds = %12
  br label %55

55:                                               ; preds = %54, %45, %34, %16
  %56 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %3, align 8
  %57 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable_unprepare(i32 %58)
  %60 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %2, align 8
  %61 = call i32 @ahci_platform_disable_regulators(%struct.ahci_host_priv* %60)
  br label %62

62:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ahci_platform_disable_regulators(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
