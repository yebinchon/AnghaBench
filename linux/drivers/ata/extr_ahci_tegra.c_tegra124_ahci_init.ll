; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra124_ahci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra124_ahci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_pad_calibration = type { i64, i64, i64, i64 }
%struct.ahci_host_priv = type { %struct.tegra_ahci_priv* }
%struct.tegra_ahci_priv = type { i64 }

@FUSE_SATA_CALIB = common dso_local global i32 0, align 4
@tegra124_pad_calibration = common dso_local global %struct.sata_pad_calibration* null, align 8
@FUSE_SATA_CALIB_MASK = common dso_local global i64 0, align 8
@SCFG_OFFSET = common dso_local global i64 0, align 8
@T_SATA0_INDEX = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN1 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_MASK = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_MASK = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_SHIFT = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_SHIFT = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN2 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN2_TX_AMP_MASK = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL1_GEN2_TX_PEAK_MASK = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL11_GEN2_RX_EQ = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL11 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL2_CDR_CNTL_GEN1 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @tegra124_ahci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_ahci_init(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.tegra_ahci_priv*, align 8
  %5 = alloca %struct.sata_pad_calibration, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %8, i32 0, i32 0
  %10 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %9, align 8
  store %struct.tegra_ahci_priv* %10, %struct.tegra_ahci_priv** %4, align 8
  %11 = load i32, i32* @FUSE_SATA_CALIB, align 4
  %12 = call i32 @tegra_fuse_readl(i32 %11, i64* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %134

17:                                               ; preds = %1
  %18 = load %struct.sata_pad_calibration*, %struct.sata_pad_calibration** @tegra124_pad_calibration, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @FUSE_SATA_CALIB_MASK, align 8
  %21 = and i64 %19, %20
  %22 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %18, i64 %21
  %23 = bitcast %struct.sata_pad_calibration* %5 to i8*
  %24 = bitcast %struct.sata_pad_calibration* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 32, i1 false)
  %25 = call i64 @BIT(i32 0)
  %26 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCFG_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @T_SATA0_INDEX, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i64 %25, i64 %32)
  %34 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SCFG_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i64 @readl(i64 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_MASK, align 8
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_MASK, align 8
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %7, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %5, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_SHIFT, align 8
  %53 = shl i64 %51, %52
  %54 = load i64, i64* %7, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %5, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_SHIFT, align 8
  %59 = shl i64 %57, %58
  %60 = load i64, i64* %7, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SCFG_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i64 %62, i64 %69)
  %71 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SCFG_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN2, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i64 @readl(i64 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_AMP_MASK, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %7, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN2_TX_PEAK_MASK, align 8
  %84 = xor i64 %83, -1
  %85 = load i64, i64* %7, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %5, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_AMP_SHIFT, align 8
  %90 = shl i64 %88, %89
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = getelementptr inbounds %struct.sata_pad_calibration, %struct.sata_pad_calibration* %5, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN1_TX_PEAK_SHIFT, align 8
  %96 = shl i64 %94, %95
  %97 = load i64, i64* %7, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SCFG_OFFSET, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i64, i64* @T_SATA0_CHX_PHY_CTRL1_GEN2, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i64 %99, i64 %106)
  %108 = load i64, i64* @T_SATA0_CHX_PHY_CTRL11_GEN2_RX_EQ, align 8
  %109 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %110 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SCFG_OFFSET, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64, i64* @T_SATA0_CHX_PHY_CTRL11, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i64 %108, i64 %115)
  %117 = load i64, i64* @T_SATA0_CHX_PHY_CTRL2_CDR_CNTL_GEN1, align 8
  %118 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %119 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SCFG_OFFSET, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i64, i64* @T_SATA0_CHX_PHY_CTRL2, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i64 %117, i64 %124)
  %126 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %127 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SCFG_OFFSET, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i64, i64* @T_SATA0_INDEX, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i64 0, i64 %132)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %17, %15
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @tegra_fuse_readl(i32, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
