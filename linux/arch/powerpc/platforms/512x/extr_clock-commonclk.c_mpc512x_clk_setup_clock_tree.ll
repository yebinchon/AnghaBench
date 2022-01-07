; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_mpc512x_clk_setup_clock_tree.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_mpc512x_clk_setup_clock_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@clks = common dso_local global i32* null, align 8
@MPC512x_CLK_SYS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"csb\00", align 1
@MPC512x_CLK_CSB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@clkregs = common dso_local global %struct.TYPE_2__* null, align 8
@divtab_2346 = common dso_local global i32 0, align 4
@MPC512x_CLK_IPS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"ddr-ug\00", align 1
@MPC512x_CLK_DDR_UG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"sdhc-x4\00", align 1
@MPC512x_CLK_SDHC_x4 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"sdhc-ug\00", align 1
@CLK_DIVIDER_ONE_BASED = common dso_local global i32 0, align 4
@MPC512x_CLK_SDHC_UG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"sdhc2-ug\00", align 1
@MPC512x_CLK_SDHC2_UG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"diu-x4\00", align 1
@MPC512x_CLK_DIU_x4 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"diu-ug\00", align 1
@MPC512x_CLK_DIU_UG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"e300\00", align 1
@MPC512x_CLK_E300 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"mbx-bus-ug\00", align 1
@MPC512x_CLK_MBX_BUS_UG = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"mbx-ug\00", align 1
@divtab_1234 = common dso_local global i32 0, align 4
@MPC512x_CLK_MBX_UG = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"mbx-3d-ug\00", align 1
@MPC512x_CLK_MBX_3D_UG = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"pci-ug\00", align 1
@MPC512x_CLK_PCI_UG = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@MPC512x_CLK_NFC_UG = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"nfc-ug\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"lpc-ug\00", align 1
@MPC512x_CLK_LPC_UG = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"lpc\00", align 1
@MPC512x_CLK_LPC = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@MPC512x_CLK_NFC = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"pata\00", align 1
@MPC512x_CLK_PATA = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"psc%d\00", align 1
@MPC512x_CLK_PSC0 = common dso_local global i64 0, align 8
@mclk_psc_data = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"psc-fifo\00", align 1
@MPC512x_CLK_PSC_FIFO = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@MPC512x_CLK_SATA = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"fec\00", align 1
@MPC512x_CLK_FEC = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@MPC512x_CLK_PCI = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [4 x i8] c"ddr\00", align 1
@MPC512x_CLK_DDR = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"fec2\00", align 1
@MPC512x_CLK_FEC2 = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [4 x i8] c"diu\00", align 1
@MPC512x_CLK_DIU = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"axe\00", align 1
@MPC512x_CLK_AXE = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@MPC512x_CLK_MEM = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@MPC512x_CLK_USB1 = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@MPC512x_CLK_USB2 = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@MPC512x_CLK_I2C = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"bdlc\00", align 1
@MPC512x_CLK_BDLC = common dso_local global i64 0, align 8
@mclk_mscan_data = common dso_local global i32* null, align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"sdhc\00", align 1
@MPC512x_CLK_SDHC = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@MPC512x_CLK_SPDIF = common dso_local global i64 0, align 8
@mclk_spdif_data = common dso_local global i32* null, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"mbx-bus\00", align 1
@MPC512x_CLK_MBX_BUS = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [4 x i8] c"mbx\00", align 1
@MPC512x_CLK_MBX = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"mbx-3d\00", align 1
@MPC512x_CLK_MBX_3D = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [4 x i8] c"iim\00", align 1
@MPC512x_CLK_IIM = common dso_local global i64 0, align 8
@.str.40 = private unnamed_addr constant [4 x i8] c"viu\00", align 1
@MPC512x_CLK_VIU = common dso_local global i64 0, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"sdhc-2\00", align 1
@MPC512x_CLK_SDHC2 = common dso_local global i64 0, align 8
@mclk_outclk_data = common dso_local global i32* null, align 8
@.str.42 = private unnamed_addr constant [12 x i8] c"psc_mclk_in\00", align 1
@MPC512x_CLK_PSC_MCLK_IN = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [11 x i8] c"can_clk_in\00", align 1
@MPC512x_CLK_CAN_CLK_IN = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [12 x i8] c"spdif_tx_in\00", align 1
@MPC512x_CLK_SPDIF_TX_IN = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [12 x i8] c"spdif_rx_in\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@MPC512x_CLK_AC97 = common dso_local global i64 0, align 8
@MPC512x_CLK_DUMMY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, i32)* @mpc512x_clk_setup_clock_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc512x_clk_setup_clock_tree(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [12 x i8], align 1
  %13 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @mpc512x_clk_setup_ref_clock(%struct.device_node* %14, i32 %15, i32* %5, i32* %6, i32* %7)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32*, i32** @clks, align 8
  %21 = load i64, i64* @MPC512x_CLK_SYS, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 2)
  %24 = load i32*, i32** @clks, align 8
  %25 = load i64, i64* @MPC512x_CLK_CSB, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* @divtab_2346, align 4
  %30 = call i32 @mpc512x_clk_divtable(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32 23, i32 3, i32 %29)
  %31 = load i32*, i32** @clks, align 8
  %32 = load i64, i64* @MPC512x_CLK_IPS, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1, i32 2)
  %35 = load i32*, i32** @clks, align 8
  %36 = load i64, i64* @MPC512x_CLK_DDR_UG, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 1)
  %39 = load i32*, i32** @clks, align 8
  %40 = load i64, i64* @MPC512x_CLK_SDHC_x4, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %45 = call i32 @mpc512x_clk_divider(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* %43, i32 1, i32 7, i32 %44)
  %46 = load i32*, i32** @clks, align 8
  %47 = load i64, i64* @MPC512x_CLK_SDHC_UG, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = call i64 (...) @soc_has_sdhc2()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %55 = call i32 @mpc512x_clk_divider(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* %53, i32 9, i32 7, i32 %54)
  %56 = load i32*, i32** @clks, align 8
  %57 = load i64, i64* @MPC512x_CLK_SDHC2_UG, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %2
  %60 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4, i32 1)
  %61 = load i32*, i32** @clks, align 8
  %62 = load i64, i64* @MPC512x_CLK_DIU_x4, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %67 = call i32 @mpc512x_clk_divider(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* %65, i32 0, i32 8, i32 %66)
  %68 = load i32*, i32** @clks, align 8
  %69 = load i64, i64* @MPC512x_CLK_DIU_UG, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = call i32 (...) @get_cpmf_mult_x2()
  store i32 %71, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32*, i32** @clks, align 8
  %76 = load i64, i64* @MPC512x_CLK_E300, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = call i64 (...) @soc_has_mbx()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %59
  %81 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 2)
  %82 = load i32*, i32** @clks, align 8
  %83 = load i64, i64* @MPC512x_CLK_MBX_BUS_UG, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* @divtab_1234, align 4
  %88 = call i32 @mpc512x_clk_divtable(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %86, i32 14, i32 3, i32 %87)
  %89 = load i32*, i32** @clks, align 8
  %90 = load i64, i64* @MPC512x_CLK_MBX_UG, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = call i32 @mpc512x_clk_factor(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 1, i32 1)
  %93 = load i32*, i32** @clks, align 8
  %94 = load i64, i64* @MPC512x_CLK_MBX_3D_UG, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %80, %59
  %97 = call i64 (...) @soc_has_pci()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* @divtab_2346, align 4
  %103 = call i32 @mpc512x_clk_divtable(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %101, i32 20, i32 3, i32 %102)
  %104 = load i32*, i32** @clks, align 8
  %105 = load i64, i64* @MPC512x_CLK_PCI_UG, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %96
  %108 = call i64 (...) @soc_has_nfc_5125()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* @ENOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @ERR_PTR(i32 %112)
  %114 = load i32*, i32** @clks, align 8
  %115 = load i64, i64* @MPC512x_CLK_NFC_UG, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  br label %125

117:                                              ; preds = %107
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* @divtab_1234, align 4
  %121 = call i32 @mpc512x_clk_divtable(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %119, i32 8, i32 3, i32 %120)
  %122 = load i32*, i32** @clks, align 8
  %123 = load i64, i64* @MPC512x_CLK_NFC_UG, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* @divtab_1234, align 4
  %129 = call i32 @mpc512x_clk_divtable(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %127, i32 11, i32 3, i32 %128)
  %130 = load i32*, i32** @clks, align 8
  %131 = load i64, i64* @MPC512x_CLK_LPC_UG, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %129, i32* %132, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32* %134, i32 30)
  %136 = load i32*, i32** @clks, align 8
  %137 = load i64, i64* @MPC512x_CLK_LPC, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32* %140, i32 29)
  %142 = load i32*, i32** @clks, align 8
  %143 = load i64, i64* @MPC512x_CLK_NFC, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %141, i32* %144, align 4
  %145 = call i64 (...) @soc_has_pata()
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %125
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %149, i32 28)
  %151 = load i32*, i32** @clks, align 8
  %152 = load i64, i64* @MPC512x_CLK_PATA, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %147, %125
  store i64 0, i64* %10, align 8
  br label %155

155:                                              ; preds = %180, %154
  %156 = load i64, i64* %10, align 8
  %157 = call i64 (...) @soc_max_pscnum()
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %183

159:                                              ; preds = %155
  %160 = getelementptr inbounds [12 x i8], [12 x i8]* %12, i64 0, i64 0
  %161 = load i64, i64* %10, align 8
  %162 = call i32 @snprintf(i8* %160, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i64 %161)
  %163 = getelementptr inbounds [12 x i8], [12 x i8]* %12, i64 0, i64 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i64, i64* %10, align 8
  %167 = sub i64 27, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 @mpc512x_clk_gated(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %165, i32 %168)
  %170 = load i32*, i32** @clks, align 8
  %171 = load i64, i64* @MPC512x_CLK_PSC0, align 8
  %172 = load i64, i64* %10, align 8
  %173 = add i64 %171, %172
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %169, i32* %174, align 4
  %175 = load i32*, i32** @mclk_psc_data, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i64, i64* %10, align 8
  %179 = call i32 @mpc512x_clk_setup_mclk(i32* %177, i64 %178)
  br label %180

180:                                              ; preds = %159
  %181 = load i64, i64* %10, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %10, align 8
  br label %155

183:                                              ; preds = %155
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %185, i32 15)
  %187 = load i32*, i32** @clks, align 8
  %188 = load i64, i64* @MPC512x_CLK_PSC_FIFO, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 %186, i32* %189, align 4
  %190 = call i64 (...) @soc_has_sata()
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %183
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %194, i32 14)
  %196 = load i32*, i32** @clks, align 8
  %197 = load i64, i64* @MPC512x_CLK_SATA, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32 %195, i32* %198, align 4
  br label %199

199:                                              ; preds = %192, %183
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %201, i32 13)
  %203 = load i32*, i32** @clks, align 8
  %204 = load i64, i64* @MPC512x_CLK_FEC, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 %202, i32* %205, align 4
  %206 = call i64 (...) @soc_has_pci()
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %199
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* %210, i32 11)
  %212 = load i32*, i32** @clks, align 8
  %213 = load i64, i64* @MPC512x_CLK_PCI, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32 %211, i32* %214, align 4
  br label %215

215:                                              ; preds = %208, %199
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %217, i32 10)
  %219 = load i32*, i32** @clks, align 8
  %220 = load i64, i64* @MPC512x_CLK_DDR, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32 %218, i32* %221, align 4
  %222 = call i64 (...) @soc_has_fec2()
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %215
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %226, i32 9)
  %228 = load i32*, i32** @clks, align 8
  %229 = load i64, i64* @MPC512x_CLK_FEC2, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32 %227, i32* %230, align 4
  br label %231

231:                                              ; preds = %224, %215
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* %233, i32 31)
  %235 = load i32*, i32** @clks, align 8
  %236 = load i64, i64* @MPC512x_CLK_DIU, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32 %234, i32* %237, align 4
  %238 = call i64 (...) @soc_has_axe()
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %231
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %242, i32 30)
  %244 = load i32*, i32** @clks, align 8
  %245 = load i64, i64* @MPC512x_CLK_AXE, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %243, i32* %246, align 4
  br label %247

247:                                              ; preds = %240, %231
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %249, i32 29)
  %251 = load i32*, i32** @clks, align 8
  %252 = load i64, i64* @MPC512x_CLK_MEM, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %250, i32* %253, align 4
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %255, i32 28)
  %257 = load i32*, i32** @clks, align 8
  %258 = load i64, i64* @MPC512x_CLK_USB1, align 8
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32 %256, i32* %259, align 4
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %261, i32 27)
  %263 = load i32*, i32** @clks, align 8
  %264 = load i64, i64* @MPC512x_CLK_USB2, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32 %262, i32* %265, align 4
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %267, i32 26)
  %269 = load i32*, i32** @clks, align 8
  %270 = load i64, i64* @MPC512x_CLK_I2C, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32 %268, i32* %271, align 4
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  %274 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %273, i32 25)
  %275 = load i32*, i32** @clks, align 8
  %276 = load i64, i64* @MPC512x_CLK_BDLC, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32 %274, i32* %277, align 4
  store i64 0, i64* %10, align 8
  br label %278

278:                                              ; preds = %289, %247
  %279 = load i64, i64* %10, align 8
  %280 = load i32*, i32** @mclk_mscan_data, align 8
  %281 = call i64 @ARRAY_SIZE(i32* %280)
  %282 = icmp ult i64 %279, %281
  br i1 %282, label %283, label %292

283:                                              ; preds = %278
  %284 = load i32*, i32** @mclk_mscan_data, align 8
  %285 = load i64, i64* %10, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i64, i64* %10, align 8
  %288 = call i32 @mpc512x_clk_setup_mclk(i32* %286, i64 %287)
  br label %289

289:                                              ; preds = %283
  %290 = load i64, i64* %10, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %10, align 8
  br label %278

292:                                              ; preds = %278
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %294, i32 24)
  %296 = load i32*, i32** @clks, align 8
  %297 = load i64, i64* @MPC512x_CLK_SDHC, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32 %295, i32* %298, align 4
  %299 = call i64 (...) @soc_has_spdif()
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %311

301:                                              ; preds = %292
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 0
  %304 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %303, i32 23)
  %305 = load i32*, i32** @clks, align 8
  %306 = load i64, i64* @MPC512x_CLK_SPDIF, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32 %304, i32* %307, align 4
  %308 = load i32*, i32** @mclk_spdif_data, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  %310 = call i32 @mpc512x_clk_setup_mclk(i32* %309, i64 0)
  br label %311

311:                                              ; preds = %301, %292
  %312 = call i64 (...) @soc_has_mbx()
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %333

314:                                              ; preds = %311
  %315 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 0
  %317 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %316, i32 22)
  %318 = load i32*, i32** @clks, align 8
  %319 = load i64, i64* @MPC512x_CLK_MBX_BUS, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32 %317, i32* %320, align 4
  %321 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 0
  %323 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32* %322, i32 21)
  %324 = load i32*, i32** @clks, align 8
  %325 = load i64, i64* @MPC512x_CLK_MBX, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32 %323, i32* %326, align 4
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32* %328, i32 20)
  %330 = load i32*, i32** @clks, align 8
  %331 = load i64, i64* @MPC512x_CLK_MBX_3D, align 8
  %332 = getelementptr inbounds i32, i32* %330, i64 %331
  store i32 %329, i32* %332, align 4
  br label %333

333:                                              ; preds = %314, %311
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  %336 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %335, i32 19)
  %337 = load i32*, i32** @clks, align 8
  %338 = load i64, i64* @MPC512x_CLK_IIM, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  store i32 %336, i32* %339, align 4
  %340 = call i64 (...) @soc_has_viu()
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %333
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 0
  %345 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %344, i32 18)
  %346 = load i32*, i32** @clks, align 8
  %347 = load i64, i64* @MPC512x_CLK_VIU, align 8
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  store i32 %345, i32* %348, align 4
  br label %349

349:                                              ; preds = %342, %333
  %350 = call i64 (...) @soc_has_sdhc2()
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %349
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 0
  %355 = call i32 @mpc512x_clk_gated(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %354, i32 17)
  %356 = load i32*, i32** @clks, align 8
  %357 = load i64, i64* @MPC512x_CLK_SDHC2, align 8
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32 %355, i32* %358, align 4
  br label %359

359:                                              ; preds = %352, %349
  %360 = call i64 (...) @soc_has_outclk()
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %378

362:                                              ; preds = %359
  store i64 0, i64* %13, align 8
  br label %363

363:                                              ; preds = %374, %362
  %364 = load i64, i64* %13, align 8
  %365 = load i32*, i32** @mclk_outclk_data, align 8
  %366 = call i64 @ARRAY_SIZE(i32* %365)
  %367 = icmp ult i64 %364, %366
  br i1 %367, label %368, label %377

368:                                              ; preds = %363
  %369 = load i32*, i32** @mclk_outclk_data, align 8
  %370 = load i64, i64* %13, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i64, i64* %13, align 8
  %373 = call i32 @mpc512x_clk_setup_mclk(i32* %371, i64 %372)
  br label %374

374:                                              ; preds = %368
  %375 = load i64, i64* %13, align 8
  %376 = add i64 %375, 1
  store i64 %376, i64* %13, align 8
  br label %363

377:                                              ; preds = %363
  br label %378

378:                                              ; preds = %377, %359
  %379 = call i32 @get_freq_from_dt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0))
  store i32 %379, i32* %11, align 4
  %380 = load i32, i32* %11, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  store i32 25000000, i32* %11, align 4
  br label %383

383:                                              ; preds = %382, %378
  %384 = load i32, i32* %11, align 4
  %385 = call i32 @mpc512x_clk_fixed(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 %384)
  %386 = load i32*, i32** @clks, align 8
  %387 = load i64, i64* @MPC512x_CLK_PSC_MCLK_IN, align 8
  %388 = getelementptr inbounds i32, i32* %386, i64 %387
  store i32 %385, i32* %388, align 4
  %389 = call i64 (...) @soc_has_mclk_mux0_canin()
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %383
  %392 = call i32 @get_freq_from_dt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0))
  store i32 %392, i32* %11, align 4
  %393 = load i32, i32* %11, align 4
  %394 = call i32 @mpc512x_clk_fixed(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i32 %393)
  %395 = load i32*, i32** @clks, align 8
  %396 = load i64, i64* @MPC512x_CLK_CAN_CLK_IN, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  store i32 %394, i32* %397, align 4
  br label %411

398:                                              ; preds = %383
  %399 = call i32 @get_freq_from_dt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0))
  store i32 %399, i32* %11, align 4
  %400 = load i32, i32* %11, align 4
  %401 = call i32 @mpc512x_clk_fixed(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 %400)
  %402 = load i32*, i32** @clks, align 8
  %403 = load i64, i64* @MPC512x_CLK_SPDIF_TX_IN, align 8
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  store i32 %401, i32* %404, align 4
  %405 = call i32 @get_freq_from_dt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0))
  store i32 %405, i32* %11, align 4
  %406 = load i32, i32* %11, align 4
  %407 = call i32 @mpc512x_clk_fixed(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 %406)
  %408 = load i32*, i32** @clks, align 8
  %409 = load i64, i64* @MPC512x_CLK_SPDIF_TX_IN, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  store i32 %407, i32* %410, align 4
  br label %411

411:                                              ; preds = %398, %391
  %412 = call i32 @mpc512x_clk_fixed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i32 24567000)
  %413 = load i32*, i32** @clks, align 8
  %414 = load i64, i64* @MPC512x_CLK_AC97, align 8
  %415 = getelementptr inbounds i32, i32* %413, i64 %414
  store i32 %412, i32* %415, align 4
  %416 = load i32*, i32** @clks, align 8
  %417 = load i64, i64* @MPC512x_CLK_DUMMY, align 8
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @clk_prepare_enable(i32 %419)
  %421 = load i32*, i32** @clks, align 8
  %422 = load i64, i64* @MPC512x_CLK_E300, align 8
  %423 = getelementptr inbounds i32, i32* %421, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @clk_prepare_enable(i32 %424)
  %426 = load i32*, i32** @clks, align 8
  %427 = load i64, i64* @MPC512x_CLK_DDR, align 8
  %428 = getelementptr inbounds i32, i32* %426, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @clk_prepare_enable(i32 %429)
  %431 = load i32*, i32** @clks, align 8
  %432 = load i64, i64* @MPC512x_CLK_MEM, align 8
  %433 = getelementptr inbounds i32, i32* %431, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @clk_prepare_enable(i32 %434)
  %436 = load i32*, i32** @clks, align 8
  %437 = load i64, i64* @MPC512x_CLK_IPS, align 8
  %438 = getelementptr inbounds i32, i32* %436, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @clk_prepare_enable(i32 %439)
  %441 = load i32*, i32** @clks, align 8
  %442 = load i64, i64* @MPC512x_CLK_LPC, align 8
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @clk_prepare_enable(i32 %444)
  ret void
}

declare dso_local i32 @mpc512x_clk_setup_ref_clock(%struct.device_node*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mpc512x_clk_factor(i8*, i8*, i32, i32) #1

declare dso_local i32 @mpc512x_clk_divtable(i8*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @mpc512x_clk_divider(i8*, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @soc_has_sdhc2(...) #1

declare dso_local i32 @get_cpmf_mult_x2(...) #1

declare dso_local i64 @soc_has_mbx(...) #1

declare dso_local i64 @soc_has_pci(...) #1

declare dso_local i64 @soc_has_nfc_5125(...) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @mpc512x_clk_gated(i8*, i8*, i32*, i32) #1

declare dso_local i64 @soc_has_pata(...) #1

declare dso_local i64 @soc_max_pscnum(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @mpc512x_clk_setup_mclk(i32*, i64) #1

declare dso_local i64 @soc_has_sata(...) #1

declare dso_local i64 @soc_has_fec2(...) #1

declare dso_local i64 @soc_has_axe(...) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @soc_has_spdif(...) #1

declare dso_local i64 @soc_has_viu(...) #1

declare dso_local i64 @soc_has_outclk(...) #1

declare dso_local i32 @get_freq_from_dt(i8*) #1

declare dso_local i32 @mpc512x_clk_fixed(i8*, i32) #1

declare dso_local i64 @soc_has_mclk_mux0_canin(...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
