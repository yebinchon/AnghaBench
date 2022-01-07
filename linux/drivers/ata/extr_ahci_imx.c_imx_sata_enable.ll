; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_sata_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_sata_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.imx_ahci_priv* }
%struct.imx_ahci_priv = type { i64, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@AHCI_IMX6Q = common dso_local global i64 0, align 8
@AHCI_IMX6QP = common dso_local global i64 0, align 8
@IOMUXC_GPR13 = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_RX_EQ_VAL_MASK = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_RX_LOS_LVL_MASK = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_RX_DPLL_MODE_MASK = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_SPD_MODE_MASK = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_MPLL_SS_EN = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_TX_ATTEN_MASK = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_TX_BOOST_MASK = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_TX_LVL_MASK = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_MPLL_CLK_EN = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_TX_EDGE_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to reset phy: %d\0A\00", align 1
@AHCI_IMX8QM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @imx_sata_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sata_enable(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.imx_ahci_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %7 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %7, i32 0, i32 0
  %9 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  store %struct.imx_ahci_priv* %9, %struct.imx_ahci_priv** %4, align 8
  %10 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %11 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %15 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

19:                                               ; preds = %1
  %20 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %21 = call i32 @ahci_platform_enable_regulators(%struct.ahci_host_priv* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %112

26:                                               ; preds = %19
  %27 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %28 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %108

34:                                               ; preds = %26
  %35 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %36 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AHCI_IMX6Q, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %42 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AHCI_IMX6QP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %40, %34
  %47 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %48 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IOMUXC_GPR13, align 4
  %51 = load i32, i32* @IMX6Q_GPR13_SATA_RX_EQ_VAL_MASK, align 4
  %52 = load i32, i32* @IMX6Q_GPR13_SATA_RX_LOS_LVL_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IMX6Q_GPR13_SATA_RX_DPLL_MODE_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IMX6Q_GPR13_SATA_SPD_MODE_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_SS_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IMX6Q_GPR13_SATA_TX_ATTEN_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IMX6Q_GPR13_SATA_TX_BOOST_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IMX6Q_GPR13_SATA_TX_LVL_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_CLK_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IMX6Q_GPR13_SATA_TX_EDGE_RATE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %71 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %69, i32 %72)
  %74 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %75 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IOMUXC_GPR13, align 4
  %78 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_CLK_EN, align 4
  %79 = load i32, i32* @IMX6Q_GPR13_SATA_MPLL_CLK_EN, align 4
  %80 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = call i32 @usleep_range(i32 100, i32 200)
  %82 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %83 = call i32 @imx_sata_phy_reset(%struct.ahci_host_priv* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %46
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %103

90:                                               ; preds = %46
  br label %101

91:                                               ; preds = %40
  %92 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %93 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AHCI_IMX8QM, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %99 = call i32 @imx8_sata_enable(%struct.ahci_host_priv* %98)
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %91
  br label %101

101:                                              ; preds = %100, %90
  %102 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %2, align 4
  br label %112

103:                                              ; preds = %86
  %104 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %4, align 8
  %105 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clk_disable_unprepare(i32 %106)
  br label %108

108:                                              ; preds = %103, %33
  %109 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %110 = call i32 @ahci_platform_disable_regulators(%struct.ahci_host_priv* %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %101, %24, %18
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @ahci_platform_enable_regulators(%struct.ahci_host_priv*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @imx_sata_phy_reset(%struct.ahci_host_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @imx8_sata_enable(%struct.ahci_host_priv*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ahci_platform_disable_regulators(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
