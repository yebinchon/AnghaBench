; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_controller_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_controller_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.tegra_ahci_priv* }
%struct.tegra_ahci_priv = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to power on AHCI controller: %d\0A\00", align 1
@SATA_FPCI_BAR5 = common dso_local global i64 0, align 8
@SATA_FPCI_BAR5_START_MASK = common dso_local global i32 0, align 4
@SATA_FPCI_BAR5_ACCESS_TYPE = common dso_local global i32 0, align 4
@SATA_FPCI_BAR5_START = common dso_local global i32 0, align 4
@SATA_CONFIGURATION_0 = common dso_local global i64 0, align 8
@SATA_CONFIGURATION_0_EN_FPCI = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL17_0_RX_EQ_CTRL_L_GEN1 = common dso_local global i32 0, align 4
@SCFG_OFFSET = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL17_0 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL18_0_RX_EQ_CTRL_L_GEN2 = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL18_0 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL20_0_RX_EQ_CTRL_H_GEN1 = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL20_0 = common dso_local global i64 0, align 8
@T_SATA0_CHX_PHY_CTRL21_0_RX_EQ_CTRL_H_GEN2 = common dso_local global i32 0, align 4
@T_SATA0_CHX_PHY_CTRL21_0 = common dso_local global i64 0, align 8
@T_SATA_CFG_PHY_0 = common dso_local global i64 0, align 8
@T_SATA_CFG_PHY_0_MASK_SQUELCH = common dso_local global i32 0, align 4
@T_SATA_CFG_PHY_0_USE_7BIT_ALIGN_DET_FOR_SPD = common dso_local global i32 0, align 4
@T_SATA0_NVOOB = common dso_local global i64 0, align 8
@T_SATA0_NVOOB_COMMA_CNT_MASK = common dso_local global i32 0, align 4
@T_SATA0_NVOOB_SQUELCH_FILTER_LENGTH_MASK = common dso_local global i32 0, align 4
@T_SATA0_NVOOB_SQUELCH_FILTER_MODE_MASK = common dso_local global i32 0, align 4
@T_SATA0_NVOOB_COMMA_CNT = common dso_local global i32 0, align 4
@T_SATA0_NVOOB_SQUELCH_FILTER_LENGTH = common dso_local global i32 0, align 4
@T_SATA0_NVOOB_SQUELCH_FILTER_MODE = common dso_local global i32 0, align 4
@T_SATA0_CFG2NVOOB_2 = common dso_local global i64 0, align 8
@T_SATA0_CFG2NVOOB_2_COMWAKE_IDLE_CNT_LOW_MASK = common dso_local global i32 0, align 4
@T_SATA0_CFG2NVOOB_2_COMWAKE_IDLE_CNT_LOW = common dso_local global i32 0, align 4
@T_SATA0_CFG_1 = common dso_local global i64 0, align 8
@T_SATA0_CFG_1_IO_SPACE = common dso_local global i32 0, align 4
@T_SATA0_CFG_1_MEMORY_SPACE = common dso_local global i32 0, align 4
@T_SATA0_CFG_1_BUS_MASTER = common dso_local global i32 0, align 4
@T_SATA0_CFG_1_SERR = common dso_local global i32 0, align 4
@T_SATA0_CFG_9_BASE_ADDRESS = common dso_local global i32 0, align 4
@T_SATA0_CFG_9 = common dso_local global i64 0, align 8
@T_SATA0_CFG_SATA = common dso_local global i64 0, align 8
@T_SATA0_CFG_SATA_BACKDOOR_PROG_IF_EN = common dso_local global i32 0, align 4
@T_SATA0_BKDOOR_CC = common dso_local global i64 0, align 8
@T_SATA0_BKDOOR_CC_CLASS_CODE_MASK = common dso_local global i32 0, align 4
@T_SATA0_BKDOOR_CC_PROG_IF_MASK = common dso_local global i32 0, align 4
@T_SATA0_BKDOOR_CC_CLASS_CODE = common dso_local global i32 0, align 4
@T_SATA0_BKDOOR_CC_PROG_IF = common dso_local global i32 0, align 4
@T_SATA0_AHCI_HBA_CAP_BKDR = common dso_local global i64 0, align 8
@T_SATA0_AHCI_HBA_CAP_BKDR_PARTIAL_ST_CAP = common dso_local global i32 0, align 4
@T_SATA0_AHCI_HBA_CAP_BKDR_SLUMBER_ST_CAP = common dso_local global i32 0, align 4
@T_SATA0_AHCI_HBA_CAP_BKDR_SALP = common dso_local global i32 0, align 4
@T_SATA0_AHCI_HBA_CAP_BKDR_SUPP_PM = common dso_local global i32 0, align 4
@T_SATA0_CFG_35 = common dso_local global i64 0, align 8
@T_SATA0_CFG_35_IDP_INDEX_MASK = common dso_local global i32 0, align 4
@T_SATA0_CFG_35_IDP_INDEX = common dso_local global i32 0, align 4
@T_SATA0_AHCI_IDP1_DATA = common dso_local global i32 0, align 4
@T_SATA0_AHCI_IDP1 = common dso_local global i64 0, align 8
@T_SATA0_CFG_PHY_1 = common dso_local global i64 0, align 8
@T_SATA0_CFG_PHY_1_PADS_IDDQ_EN = common dso_local global i32 0, align 4
@T_SATA0_CFG_PHY_1_PAD_PLL_IDDQ_EN = common dso_local global i32 0, align 4
@SATA_CONFIGURATION_0_CLK_OVERRIDE = common dso_local global i32 0, align 4
@SATA_INTR_MASK = common dso_local global i64 0, align 8
@SATA_INTR_MASK_IP_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @tegra_ahci_controller_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ahci_controller_init(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.tegra_ahci_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %7 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %7, i32 0, i32 0
  %9 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %8, align 8
  store %struct.tegra_ahci_priv* %9, %struct.tegra_ahci_priv** %4, align 8
  %10 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %11 = call i32 @tegra_ahci_power_on(%struct.ahci_host_priv* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %433

22:                                               ; preds = %1
  %23 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SATA_FPCI_BAR5, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @SATA_FPCI_BAR5_START_MASK, align 4
  %30 = load i32, i32* @SATA_FPCI_BAR5_ACCESS_TYPE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @SATA_FPCI_BAR5_START, align 4
  %36 = load i32, i32* @SATA_FPCI_BAR5_ACCESS_TYPE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SATA_FPCI_BAR5, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SATA_CONFIGURATION_0, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @SATA_CONFIGURATION_0_EN_FPCI, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SATA_CONFIGURATION_0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load i32, i32* @T_SATA0_CHX_PHY_CTRL17_0_RX_EQ_CTRL_L_GEN1, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SCFG_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* @T_SATA0_CHX_PHY_CTRL17_0, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %64, i64 %71)
  %73 = load i32, i32* @T_SATA0_CHX_PHY_CTRL18_0_RX_EQ_CTRL_L_GEN2, align 4
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SCFG_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i64, i64* @T_SATA0_CHX_PHY_CTRL18_0, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %74, i64 %81)
  %83 = load i32, i32* @T_SATA0_CHX_PHY_CTRL20_0_RX_EQ_CTRL_H_GEN1, align 4
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %86 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SCFG_OFFSET, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64, i64* @T_SATA0_CHX_PHY_CTRL20_0, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %84, i64 %91)
  %93 = load i32, i32* @T_SATA0_CHX_PHY_CTRL21_0_RX_EQ_CTRL_H_GEN2, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %96 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SCFG_OFFSET, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* @T_SATA0_CHX_PHY_CTRL21_0, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %94, i64 %101)
  %103 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %104 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SCFG_OFFSET, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i64, i64* @T_SATA_CFG_PHY_0, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @readl(i64 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @T_SATA_CFG_PHY_0_MASK_SQUELCH, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @T_SATA_CFG_PHY_0_USE_7BIT_ALIGN_DET_FOR_SPD, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %120 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SCFG_OFFSET, align 8
  %123 = add nsw i64 %121, %122
  %124 = load i64, i64* @T_SATA_CFG_PHY_0, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %118, i64 %125)
  %127 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %128 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SCFG_OFFSET, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i64, i64* @T_SATA0_NVOOB, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @readl(i64 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @T_SATA0_NVOOB_COMMA_CNT_MASK, align 4
  %136 = load i32, i32* @T_SATA0_NVOOB_SQUELCH_FILTER_LENGTH_MASK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @T_SATA0_NVOOB_SQUELCH_FILTER_MODE_MASK, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* @T_SATA0_NVOOB_COMMA_CNT, align 4
  %144 = load i32, i32* @T_SATA0_NVOOB_SQUELCH_FILTER_LENGTH, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @T_SATA0_NVOOB_SQUELCH_FILTER_MODE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %152 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SCFG_OFFSET, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i64, i64* @T_SATA0_NVOOB, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 %150, i64 %157)
  %159 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %160 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SCFG_OFFSET, align 8
  %163 = add nsw i64 %161, %162
  %164 = load i64, i64* @T_SATA0_CFG2NVOOB_2, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @readl(i64 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* @T_SATA0_CFG2NVOOB_2_COMWAKE_IDLE_CNT_LOW_MASK, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @T_SATA0_CFG2NVOOB_2_COMWAKE_IDLE_CNT_LOW, align 4
  %172 = load i32, i32* %6, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %176 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SCFG_OFFSET, align 8
  %179 = add nsw i64 %177, %178
  %180 = load i64, i64* @T_SATA0_CFG2NVOOB_2, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @writel(i32 %174, i64 %181)
  %183 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %184 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %183, i32 0, i32 1
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = icmp ne %struct.TYPE_5__* %187, null
  br i1 %188, label %189, label %210

189:                                              ; preds = %22
  %190 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %191 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %190, i32 0, i32 1
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = bitcast {}** %195 to i32 (%struct.ahci_host_priv*)**
  %197 = load i32 (%struct.ahci_host_priv*)*, i32 (%struct.ahci_host_priv*)** %196, align 8
  %198 = icmp ne i32 (%struct.ahci_host_priv*)* %197, null
  br i1 %198, label %199, label %210

199:                                              ; preds = %189
  %200 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %201 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %200, i32 0, i32 1
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = bitcast {}** %205 to i32 (%struct.ahci_host_priv*)**
  %207 = load i32 (%struct.ahci_host_priv*)*, i32 (%struct.ahci_host_priv*)** %206, align 8
  %208 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %209 = call i32 %207(%struct.ahci_host_priv* %208)
  br label %210

210:                                              ; preds = %199, %189, %22
  %211 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %212 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @SCFG_OFFSET, align 8
  %215 = add nsw i64 %213, %214
  %216 = load i64, i64* @T_SATA0_CFG_1, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @readl(i64 %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* @T_SATA0_CFG_1_IO_SPACE, align 4
  %220 = load i32, i32* @T_SATA0_CFG_1_MEMORY_SPACE, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @T_SATA0_CFG_1_BUS_MASTER, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @T_SATA0_CFG_1_SERR, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* %6, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %230 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SCFG_OFFSET, align 8
  %233 = add nsw i64 %231, %232
  %234 = load i64, i64* @T_SATA0_CFG_1, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @writel(i32 %228, i64 %235)
  %237 = load i32, i32* @T_SATA0_CFG_9_BASE_ADDRESS, align 4
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %240 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @SCFG_OFFSET, align 8
  %243 = add nsw i64 %241, %242
  %244 = load i64, i64* @T_SATA0_CFG_9, align 8
  %245 = add nsw i64 %243, %244
  %246 = call i32 @writel(i32 %238, i64 %245)
  %247 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %248 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @SCFG_OFFSET, align 8
  %251 = add nsw i64 %249, %250
  %252 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @readl(i64 %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* @T_SATA0_CFG_SATA_BACKDOOR_PROG_IF_EN, align 4
  %256 = load i32, i32* %6, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %6, align 4
  %259 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %260 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @SCFG_OFFSET, align 8
  %263 = add nsw i64 %261, %262
  %264 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @writel(i32 %258, i64 %265)
  %267 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %268 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @SCFG_OFFSET, align 8
  %271 = add nsw i64 %269, %270
  %272 = load i64, i64* @T_SATA0_BKDOOR_CC, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 @readl(i64 %273)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* @T_SATA0_BKDOOR_CC_CLASS_CODE_MASK, align 4
  %276 = load i32, i32* @T_SATA0_BKDOOR_CC_PROG_IF_MASK, align 4
  %277 = or i32 %275, %276
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %6, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %6, align 4
  %281 = load i32, i32* @T_SATA0_BKDOOR_CC_CLASS_CODE, align 4
  %282 = load i32, i32* @T_SATA0_BKDOOR_CC_PROG_IF, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* %6, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %288 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @SCFG_OFFSET, align 8
  %291 = add nsw i64 %289, %290
  %292 = load i64, i64* @T_SATA0_BKDOOR_CC, align 8
  %293 = add nsw i64 %291, %292
  %294 = call i32 @writel(i32 %286, i64 %293)
  %295 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %296 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @SCFG_OFFSET, align 8
  %299 = add nsw i64 %297, %298
  %300 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @readl(i64 %301)
  store i32 %302, i32* %6, align 4
  %303 = load i32, i32* @T_SATA0_CFG_SATA_BACKDOOR_PROG_IF_EN, align 4
  %304 = xor i32 %303, -1
  %305 = load i32, i32* %6, align 4
  %306 = and i32 %305, %304
  store i32 %306, i32* %6, align 4
  %307 = load i32, i32* %6, align 4
  %308 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %309 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @SCFG_OFFSET, align 8
  %312 = add nsw i64 %310, %311
  %313 = load i64, i64* @T_SATA0_CFG_SATA, align 8
  %314 = add nsw i64 %312, %313
  %315 = call i32 @writel(i32 %307, i64 %314)
  %316 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %317 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @SCFG_OFFSET, align 8
  %320 = add nsw i64 %318, %319
  %321 = load i64, i64* @T_SATA0_AHCI_HBA_CAP_BKDR, align 8
  %322 = add nsw i64 %320, %321
  %323 = call i32 @readl(i64 %322)
  store i32 %323, i32* %6, align 4
  %324 = load i32, i32* @T_SATA0_AHCI_HBA_CAP_BKDR_PARTIAL_ST_CAP, align 4
  %325 = load i32, i32* @T_SATA0_AHCI_HBA_CAP_BKDR_SLUMBER_ST_CAP, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @T_SATA0_AHCI_HBA_CAP_BKDR_SALP, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @T_SATA0_AHCI_HBA_CAP_BKDR_SUPP_PM, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* %6, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %6, align 4
  %333 = load i32, i32* %6, align 4
  %334 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %335 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @SCFG_OFFSET, align 8
  %338 = add nsw i64 %336, %337
  %339 = load i64, i64* @T_SATA0_AHCI_HBA_CAP_BKDR, align 8
  %340 = add nsw i64 %338, %339
  %341 = call i32 @writel(i32 %333, i64 %340)
  %342 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %343 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @SCFG_OFFSET, align 8
  %346 = add nsw i64 %344, %345
  %347 = load i64, i64* @T_SATA0_CFG_35, align 8
  %348 = add nsw i64 %346, %347
  %349 = call i32 @readl(i64 %348)
  store i32 %349, i32* %6, align 4
  %350 = load i32, i32* @T_SATA0_CFG_35_IDP_INDEX_MASK, align 4
  %351 = xor i32 %350, -1
  %352 = load i32, i32* %6, align 4
  %353 = and i32 %352, %351
  store i32 %353, i32* %6, align 4
  %354 = load i32, i32* @T_SATA0_CFG_35_IDP_INDEX, align 4
  %355 = load i32, i32* %6, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %6, align 4
  %357 = load i32, i32* %6, align 4
  %358 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %359 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @SCFG_OFFSET, align 8
  %362 = add nsw i64 %360, %361
  %363 = load i64, i64* @T_SATA0_CFG_35, align 8
  %364 = add nsw i64 %362, %363
  %365 = call i32 @writel(i32 %357, i64 %364)
  %366 = load i32, i32* @T_SATA0_AHCI_IDP1_DATA, align 4
  store i32 %366, i32* %6, align 4
  %367 = load i32, i32* %6, align 4
  %368 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %369 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @SCFG_OFFSET, align 8
  %372 = add nsw i64 %370, %371
  %373 = load i64, i64* @T_SATA0_AHCI_IDP1, align 8
  %374 = add nsw i64 %372, %373
  %375 = call i32 @writel(i32 %367, i64 %374)
  %376 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %377 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @SCFG_OFFSET, align 8
  %380 = add nsw i64 %378, %379
  %381 = load i64, i64* @T_SATA0_CFG_PHY_1, align 8
  %382 = add nsw i64 %380, %381
  %383 = call i32 @readl(i64 %382)
  store i32 %383, i32* %6, align 4
  %384 = load i32, i32* @T_SATA0_CFG_PHY_1_PADS_IDDQ_EN, align 4
  %385 = load i32, i32* @T_SATA0_CFG_PHY_1_PAD_PLL_IDDQ_EN, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* %6, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %6, align 4
  %389 = load i32, i32* %6, align 4
  %390 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %391 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @SCFG_OFFSET, align 8
  %394 = add nsw i64 %392, %393
  %395 = load i64, i64* @T_SATA0_CFG_PHY_1, align 8
  %396 = add nsw i64 %394, %395
  %397 = call i32 @writel(i32 %389, i64 %396)
  %398 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %399 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @SATA_CONFIGURATION_0, align 8
  %402 = add nsw i64 %400, %401
  %403 = call i32 @readl(i64 %402)
  store i32 %403, i32* %6, align 4
  %404 = load i32, i32* @SATA_CONFIGURATION_0_CLK_OVERRIDE, align 4
  %405 = xor i32 %404, -1
  %406 = load i32, i32* %6, align 4
  %407 = and i32 %406, %405
  store i32 %407, i32* %6, align 4
  %408 = load i32, i32* %6, align 4
  %409 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %410 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @SATA_CONFIGURATION_0, align 8
  %413 = add nsw i64 %411, %412
  %414 = call i32 @writel(i32 %408, i64 %413)
  %415 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %416 = call i32 @tegra_ahci_handle_quirks(%struct.ahci_host_priv* %415)
  %417 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %418 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @SATA_INTR_MASK, align 8
  %421 = add nsw i64 %419, %420
  %422 = call i32 @readl(i64 %421)
  store i32 %422, i32* %6, align 4
  %423 = load i32, i32* @SATA_INTR_MASK_IP_INT_MASK, align 4
  %424 = load i32, i32* %6, align 4
  %425 = or i32 %424, %423
  store i32 %425, i32* %6, align 4
  %426 = load i32, i32* %6, align 4
  %427 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %4, align 8
  %428 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @SATA_INTR_MASK, align 8
  %431 = add nsw i64 %429, %430
  %432 = call i32 @writel(i32 %426, i64 %431)
  store i32 0, i32* %2, align 4
  br label %433

433:                                              ; preds = %210, %14
  %434 = load i32, i32* %2, align 4
  ret i32 %434
}

declare dso_local i32 @tegra_ahci_power_on(%struct.ahci_host_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tegra_ahci_handle_quirks(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
