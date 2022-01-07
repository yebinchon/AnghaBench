; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx8_sata_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx8_sata_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { %struct.imx_ahci_priv* }
%struct.imx_ahci_priv = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't enable phy_pclk0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't enable phy_pclk1.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"can't enable epcs_tx_clk.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"can't enable epcs_rx_clk.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"can't enable phy_apbclk.\0A\00", align 1
@IMX8QM_CSR_PCIEA_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_CSR_PCIE_CTRL2_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_CTRL_LTSSM_ENABLE = common dso_local global i32 0, align 4
@IMX8QM_CSR_PHYX2_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_PHY_PIPE_RSTN_0 = common dso_local global i32 0, align 4
@IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0 = common dso_local global i32 0, align 4
@IMX8QM_CSR_PCIEB_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_PHY_PIPE_RSTN_1 = common dso_local global i32 0, align 4
@IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1 = common dso_local global i32 0, align 4
@IMX8QM_LPCG_PHYX2_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_LPCG_PHYX2_PCLK0_MASK = common dso_local global i32 0, align 4
@IMX8QM_LPCG_PHYX2_PCLK1_MASK = common dso_local global i32 0, align 4
@IMX8QM_CTRL_BUTTON_RST_N = common dso_local global i32 0, align 4
@IMX8QM_CTRL_POWER_UP_RST_N = common dso_local global i32 0, align 4
@IMX8QM_CSR_PHYX1_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_PHY_MODE_MASK = common dso_local global i32 0, align 4
@IMX8QM_PHY_MODE_SATA = common dso_local global i32 0, align 4
@IMX8QM_CSR_MISC_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_MISC_IOB_RXENA = common dso_local global i32 0, align 4
@IMX8QM_MISC_IOB_TXENA = common dso_local global i32 0, align 4
@IMX8QM_MISC_PHYX1_EPCS_SEL = common dso_local global i32 0, align 4
@IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1 = common dso_local global i32 0, align 4
@IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0 = common dso_local global i32 0, align 4
@IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1 = common dso_local global i32 0, align 4
@IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0 = common dso_local global i32 0, align 4
@IMX8QM_CSR_SATA_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_SATA_CTRL_EPCS_PHYRESET_N = common dso_local global i32 0, align 4
@IMX8QM_SATA_CTRL_RESET_N = common dso_local global i32 0, align 4
@IMX8QM_PHY_APB_RSTN_0 = common dso_local global i32 0, align 4
@IMX8QM_CSR_PHYX_STTS0_OFFSET = common dso_local global i32 0, align 4
@IMX8QM_STTS0_LANE0_TX_PLL_LOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"TX PLL of the PHY is not locked\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET = common dso_local global i64 0, align 8
@IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"Can't set PHY RX impedance ratio.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Can't set PHY TX impedance ratio.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @imx8_sata_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8_sata_enable(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_ahci_priv*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %10 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %10, i32 0, i32 0
  %12 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %11, align 8
  store %struct.imx_ahci_priv* %12, %struct.imx_ahci_priv** %8, align 8
  %13 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %14 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %13, i32 0, i32 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %18 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %364

27:                                               ; preds = %1
  %28 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %29 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_prepare_enable(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %358

37:                                               ; preds = %27
  %38 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %39 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_prepare_enable(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %9, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %353

47:                                               ; preds = %37
  %48 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %49 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_prepare_enable(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %348

57:                                               ; preds = %47
  %58 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %59 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_prepare_enable(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %343

67:                                               ; preds = %57
  %68 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %69 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IMX8QM_CSR_PCIEA_OFFSET, align 4
  %72 = load i32, i32* @IMX8QM_CSR_PCIE_CTRL2_OFFSET, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @regmap_read(i32 %70, i32 %73, i32* %4)
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @IMX8QM_CTRL_LTSSM_ENABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %67
  %80 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %81 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IMX8QM_CSR_PHYX2_OFFSET, align 4
  %84 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_0, align 4
  %85 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_0, align 4
  %88 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_OVERRIDE_0, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %79, %67
  %92 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %93 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IMX8QM_CSR_PCIEB_OFFSET, align 4
  %96 = load i32, i32* @IMX8QM_CSR_PCIE_CTRL2_OFFSET, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @regmap_read(i32 %94, i32 %97, i32* %5)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @IMX8QM_CTRL_LTSSM_ENABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %91
  %104 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %105 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @IMX8QM_CSR_PHYX2_OFFSET, align 4
  %108 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_1, align 4
  %109 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_1, align 4
  %112 = load i32, i32* @IMX8QM_PHY_PIPE_RSTN_OVERRIDE_1, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %103, %91
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @IMX8QM_CTRL_LTSSM_ENABLE, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %124 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IMX8QM_LPCG_PHYX2_OFFSET, align 4
  %127 = load i32, i32* @IMX8QM_LPCG_PHYX2_PCLK0_MASK, align 4
  %128 = load i32, i32* @IMX8QM_LPCG_PHYX2_PCLK1_MASK, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 %129, i32 0)
  br label %131

131:                                              ; preds = %122, %115
  %132 = load i32, i32* @IMX8QM_CSR_PCIEA_OFFSET, align 4
  %133 = load i32, i32* @IMX8QM_CSR_PCIE_CTRL2_OFFSET, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %4, align 4
  %135 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %136 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @IMX8QM_CTRL_BUTTON_RST_N, align 4
  %140 = load i32, i32* @IMX8QM_CTRL_BUTTON_RST_N, align 4
  %141 = call i32 @regmap_update_bits(i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %143 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @IMX8QM_CTRL_POWER_UP_RST_N, align 4
  %147 = load i32, i32* @IMX8QM_CTRL_POWER_UP_RST_N, align 4
  %148 = call i32 @regmap_update_bits(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %150 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @IMX8QM_CSR_PHYX1_OFFSET, align 4
  %153 = load i32, i32* @IMX8QM_PHY_MODE_MASK, align 4
  %154 = load i32, i32* @IMX8QM_PHY_MODE_SATA, align 4
  %155 = call i32 @regmap_update_bits(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %157 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IMX8QM_CSR_MISC_OFFSET, align 4
  %160 = load i32, i32* @IMX8QM_MISC_IOB_RXENA, align 4
  %161 = load i32, i32* @IMX8QM_MISC_IOB_RXENA, align 4
  %162 = call i32 @regmap_update_bits(i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %164 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @IMX8QM_CSR_MISC_OFFSET, align 4
  %167 = load i32, i32* @IMX8QM_MISC_IOB_TXENA, align 4
  %168 = call i32 @regmap_update_bits(i32 %165, i32 %166, i32 %167, i32 0)
  %169 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %170 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @IMX8QM_CSR_MISC_OFFSET, align 4
  %173 = load i32, i32* @IMX8QM_MISC_PHYX1_EPCS_SEL, align 4
  %174 = load i32, i32* @IMX8QM_MISC_PHYX1_EPCS_SEL, align 4
  %175 = call i32 @regmap_update_bits(i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %177 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @IMX8QM_CSR_MISC_OFFSET, align 4
  %180 = load i32, i32* @IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1, align 4
  %181 = load i32, i32* @IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_1, align 4
  %188 = load i32, i32* @IMX8QM_MISC_CLKREQN_OUT_OVERRIDE_0, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @IMX8QM_MISC_CLKREQN_IN_OVERRIDE_1, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @IMX8QM_MISC_CLKREQN_IN_OVERRIDE_0, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @regmap_update_bits(i32 %178, i32 %179, i32 %186, i32 %193)
  %195 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %196 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @IMX8QM_CSR_SATA_OFFSET, align 4
  %199 = load i32, i32* @IMX8QM_SATA_CTRL_EPCS_PHYRESET_N, align 4
  %200 = call i32 @regmap_update_bits(i32 %197, i32 %198, i32 %199, i32 0)
  %201 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %202 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IMX8QM_CSR_SATA_OFFSET, align 4
  %205 = load i32, i32* @IMX8QM_SATA_CTRL_EPCS_PHYRESET_N, align 4
  %206 = load i32, i32* @IMX8QM_SATA_CTRL_EPCS_PHYRESET_N, align 4
  %207 = call i32 @regmap_update_bits(i32 %203, i32 %204, i32 %205, i32 %206)
  %208 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %209 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IMX8QM_CSR_SATA_OFFSET, align 4
  %212 = load i32, i32* @IMX8QM_SATA_CTRL_RESET_N, align 4
  %213 = load i32, i32* @IMX8QM_SATA_CTRL_RESET_N, align 4
  %214 = call i32 @regmap_update_bits(i32 %210, i32 %211, i32 %212, i32 %213)
  %215 = call i32 @udelay(i32 1)
  %216 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %217 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @IMX8QM_CSR_SATA_OFFSET, align 4
  %220 = load i32, i32* @IMX8QM_SATA_CTRL_RESET_N, align 4
  %221 = call i32 @regmap_update_bits(i32 %218, i32 %219, i32 %220, i32 0)
  %222 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %223 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @IMX8QM_CSR_SATA_OFFSET, align 4
  %226 = load i32, i32* @IMX8QM_SATA_CTRL_RESET_N, align 4
  %227 = load i32, i32* @IMX8QM_SATA_CTRL_RESET_N, align 4
  %228 = call i32 @regmap_update_bits(i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %230 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @IMX8QM_CSR_PHYX1_OFFSET, align 4
  %233 = load i32, i32* @IMX8QM_PHY_APB_RSTN_0, align 4
  %234 = load i32, i32* @IMX8QM_PHY_APB_RSTN_0, align 4
  %235 = call i32 @regmap_update_bits(i32 %231, i32 %232, i32 %233, i32 %234)
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %257, %131
  %237 = load i32, i32* %6, align 4
  %238 = icmp slt i32 %237, 100
  br i1 %238, label %239, label %260

239:                                              ; preds = %236
  %240 = load i32, i32* @IMX8QM_CSR_PHYX1_OFFSET, align 4
  %241 = load i32, i32* @IMX8QM_CSR_PHYX_STTS0_OFFSET, align 4
  %242 = add nsw i32 %240, %241
  store i32 %242, i32* %5, align 4
  %243 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %244 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @regmap_read(i32 %245, i32 %246, i32* %4)
  %248 = load i32, i32* @IMX8QM_STTS0_LANE0_TX_PLL_LOCK, align 4
  %249 = load i32, i32* %4, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %4, align 4
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @IMX8QM_STTS0_LANE0_TX_PLL_LOCK, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %239
  br label %260

255:                                              ; preds = %239
  %256 = call i32 @udelay(i32 1)
  br label %257

257:                                              ; preds = %255
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %236

260:                                              ; preds = %254, %236
  %261 = load i32, i32* %4, align 4
  %262 = load i32, i32* @IMX8QM_STTS0_LANE0_TX_PLL_LOCK, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load %struct.device*, %struct.device** %9, align 8
  %266 = call i32 @dev_err(%struct.device* %265, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %267 = load i32, i32* @ENODEV, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %7, align 4
  br label %338

269:                                              ; preds = %260
  %270 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %271 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %274 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET, align 8
  %277 = add nsw i64 %275, %276
  %278 = call i32 @writeb(i32 %272, i64 %277)
  %279 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %280 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %283 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @writeb(i32 %281, i64 %286)
  %288 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %289 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @IMX8QM_SATA_PHY_RX_IMPED_RATIO_OFFSET, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @readb(i64 %292)
  store i32 %293, i32* %5, align 4
  %294 = load i32, i32* %5, align 4
  %295 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %296 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %294, %297
  %299 = zext i1 %298 to i32
  %300 = call i64 @unlikely(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %269
  %303 = load %struct.device*, %struct.device** %9, align 8
  %304 = call i32 @dev_info(%struct.device* %303, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %269
  %306 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %307 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @IMX8QM_SATA_PHY_TX_IMPED_RATIO_OFFSET, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @readb(i64 %310)
  store i32 %311, i32* %5, align 4
  %312 = load i32, i32* %5, align 4
  %313 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %314 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp ne i32 %312, %315
  %317 = zext i1 %316 to i32
  %318 = call i64 @unlikely(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %305
  %321 = load %struct.device*, %struct.device** %9, align 8
  %322 = call i32 @dev_info(%struct.device* %321, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320, %305
  %324 = call i32 @usleep_range(i32 50, i32 100)
  %325 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %326 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @clk_disable_unprepare(i32 %327)
  %329 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %330 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @clk_disable_unprepare(i32 %331)
  %333 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %334 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @clk_disable_unprepare(i32 %335)
  %337 = load i32, i32* %7, align 4
  store i32 %337, i32* %2, align 4
  br label %364

338:                                              ; preds = %264
  %339 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %340 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @clk_disable_unprepare(i32 %341)
  br label %343

343:                                              ; preds = %338, %64
  %344 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %345 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @clk_disable_unprepare(i32 %346)
  br label %348

348:                                              ; preds = %343, %54
  %349 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %350 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @clk_disable_unprepare(i32 %351)
  br label %353

353:                                              ; preds = %348, %44
  %354 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %355 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @clk_disable_unprepare(i32 %356)
  br label %358

358:                                              ; preds = %353, %34
  %359 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %8, align 8
  %360 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @clk_disable_unprepare(i32 %361)
  %363 = load i32, i32* %7, align 4
  store i32 %363, i32* %2, align 4
  br label %364

364:                                              ; preds = %358, %323, %23
  %365 = load i32, i32* %2, align 4
  ret i32 %365
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
