; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx8qxp.c_imx8qxp_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx8qxp.c_imx8qxp_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_hw_onecell_data = type { i32, %struct.clk_hw** }
%struct.clk_hw = type { i32 }

@hws = common dso_local global i32 0, align 4
@IMX_SCU_CLK_END = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@IMX_CLK_DUMMY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"dma_ipg_clk_root\00", align 1
@IMX_ADMA_IPG_CLK_ROOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"conn_axi_clk_root\00", align 1
@IMX_CONN_AXI_CLK_ROOT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"conn_ahb_clk_root\00", align 1
@IMX_CONN_AHB_CLK_ROOT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"conn_ipg_clk_root\00", align 1
@IMX_CONN_IPG_CLK_ROOT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"dc_axi_ext_clk_root\00", align 1
@IMX_DC_AXI_EXT_CLK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"dc_axi_int_clk_root\00", align 1
@IMX_DC_AXI_INT_CLK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"dc_cfg_clk_root\00", align 1
@IMX_DC_CFG_CLK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"mipi_ipg_clk_root\00", align 1
@IMX_MIPI_IPG_CLK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"img_axi_clk_root\00", align 1
@IMX_IMG_AXI_CLK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"img_ipg_clk_root\00", align 1
@IMX_IMG_IPG_CLK = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"img_pxl_clk_root\00", align 1
@IMX_IMG_PXL_CLK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"hsio_axi_clk_root\00", align 1
@IMX_HSIO_AXI_CLK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"hsio_per_clk_root\00", align 1
@IMX_HSIO_PER_CLK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"lsio_mem_clk_root\00", align 1
@IMX_LSIO_MEM_CLK = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [18 x i8] c"lsio_bus_clk_root\00", align 1
@IMX_LSIO_BUS_CLK = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"a35_clk\00", align 1
@IMX_SC_R_A35 = common dso_local global i32 0, align 4
@IMX_SC_PM_CLK_CPU = common dso_local global i32 0, align 4
@IMX_A35_CLK = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"pwm0_clk\00", align 1
@IMX_SC_R_PWM_0 = common dso_local global i32 0, align 4
@IMX_SC_PM_CLK_PER = common dso_local global i32 0, align 4
@IMX_LSIO_PWM0_CLK = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"pwm1_clk\00", align 1
@IMX_SC_R_PWM_1 = common dso_local global i32 0, align 4
@IMX_LSIO_PWM1_CLK = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"pwm2_clk\00", align 1
@IMX_SC_R_PWM_2 = common dso_local global i32 0, align 4
@IMX_LSIO_PWM2_CLK = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"pwm3_clk\00", align 1
@IMX_SC_R_PWM_3 = common dso_local global i32 0, align 4
@IMX_LSIO_PWM3_CLK = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"pwm4_clk\00", align 1
@IMX_SC_R_PWM_4 = common dso_local global i32 0, align 4
@IMX_LSIO_PWM4_CLK = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"pwm5_clk\00", align 1
@IMX_SC_R_PWM_5 = common dso_local global i32 0, align 4
@IMX_LSIO_PWM5_CLK = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"pwm6_clk\00", align 1
@IMX_SC_R_PWM_6 = common dso_local global i32 0, align 4
@IMX_LSIO_PWM6_CLK = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [9 x i8] c"pwm7_clk\00", align 1
@IMX_SC_R_PWM_7 = common dso_local global i32 0, align 4
@IMX_LSIO_PWM7_CLK = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"gpt0_clk\00", align 1
@IMX_SC_R_GPT_0 = common dso_local global i32 0, align 4
@IMX_LSIO_GPT0_CLK = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [9 x i8] c"gpt1_clk\00", align 1
@IMX_SC_R_GPT_1 = common dso_local global i32 0, align 4
@IMX_LSIO_GPT1_CLK = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"gpt2_clk\00", align 1
@IMX_SC_R_GPT_2 = common dso_local global i32 0, align 4
@IMX_LSIO_GPT2_CLK = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"gpt3_clk\00", align 1
@IMX_SC_R_GPT_3 = common dso_local global i32 0, align 4
@IMX_LSIO_GPT3_CLK = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"gpt4_clk\00", align 1
@IMX_SC_R_GPT_4 = common dso_local global i32 0, align 4
@IMX_LSIO_GPT4_CLK = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"fspi0_clk\00", align 1
@IMX_SC_R_FSPI_0 = common dso_local global i32 0, align 4
@IMX_LSIO_FSPI0_CLK = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [10 x i8] c"fspi1_clk\00", align 1
@IMX_SC_R_FSPI_1 = common dso_local global i32 0, align 4
@IMX_LSIO_FSPI1_CLK = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@IMX_SC_R_UART_0 = common dso_local global i32 0, align 4
@IMX_ADMA_UART0_CLK = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@IMX_SC_R_UART_1 = common dso_local global i32 0, align 4
@IMX_ADMA_UART1_CLK = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [10 x i8] c"uart2_clk\00", align 1
@IMX_SC_R_UART_2 = common dso_local global i32 0, align 4
@IMX_ADMA_UART2_CLK = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [10 x i8] c"uart3_clk\00", align 1
@IMX_SC_R_UART_3 = common dso_local global i32 0, align 4
@IMX_ADMA_UART3_CLK = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [9 x i8] c"spi0_clk\00", align 1
@IMX_SC_R_SPI_0 = common dso_local global i32 0, align 4
@IMX_ADMA_SPI0_CLK = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"spi1_clk\00", align 1
@IMX_SC_R_SPI_1 = common dso_local global i32 0, align 4
@IMX_ADMA_SPI1_CLK = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [9 x i8] c"spi2_clk\00", align 1
@IMX_SC_R_SPI_2 = common dso_local global i32 0, align 4
@IMX_ADMA_SPI2_CLK = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"spi3_clk\00", align 1
@IMX_SC_R_SPI_3 = common dso_local global i32 0, align 4
@IMX_ADMA_SPI3_CLK = common dso_local global i64 0, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"can0_clk\00", align 1
@IMX_SC_R_CAN_0 = common dso_local global i32 0, align 4
@IMX_ADMA_CAN0_CLK = common dso_local global i64 0, align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"i2c0_clk\00", align 1
@IMX_SC_R_I2C_0 = common dso_local global i32 0, align 4
@IMX_ADMA_I2C0_CLK = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"i2c1_clk\00", align 1
@IMX_SC_R_I2C_1 = common dso_local global i32 0, align 4
@IMX_ADMA_I2C1_CLK = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [9 x i8] c"i2c2_clk\00", align 1
@IMX_SC_R_I2C_2 = common dso_local global i32 0, align 4
@IMX_ADMA_I2C2_CLK = common dso_local global i64 0, align 8
@.str.44 = private unnamed_addr constant [9 x i8] c"i2c3_clk\00", align 1
@IMX_SC_R_I2C_3 = common dso_local global i32 0, align 4
@IMX_ADMA_I2C3_CLK = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [9 x i8] c"ftm0_clk\00", align 1
@IMX_SC_R_FTM_0 = common dso_local global i32 0, align 4
@IMX_ADMA_FTM0_CLK = common dso_local global i64 0, align 8
@.str.46 = private unnamed_addr constant [9 x i8] c"ftm1_clk\00", align 1
@IMX_SC_R_FTM_1 = common dso_local global i32 0, align 4
@IMX_ADMA_FTM1_CLK = common dso_local global i64 0, align 8
@.str.47 = private unnamed_addr constant [9 x i8] c"adc0_clk\00", align 1
@IMX_SC_R_ADC_0 = common dso_local global i32 0, align 4
@IMX_ADMA_ADC0_CLK = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [8 x i8] c"pwm_clk\00", align 1
@IMX_SC_R_LCD_0_PWM_0 = common dso_local global i32 0, align 4
@IMX_ADMA_PWM_CLK = common dso_local global i64 0, align 8
@.str.49 = private unnamed_addr constant [8 x i8] c"lcd_clk\00", align 1
@IMX_SC_R_LCD_0 = common dso_local global i32 0, align 4
@IMX_ADMA_LCD_CLK = common dso_local global i64 0, align 8
@.str.50 = private unnamed_addr constant [10 x i8] c"sdhc0_clk\00", align 1
@IMX_SC_R_SDHC_0 = common dso_local global i32 0, align 4
@IMX_CONN_SDHC0_CLK = common dso_local global i64 0, align 8
@.str.51 = private unnamed_addr constant [10 x i8] c"sdhc1_clk\00", align 1
@IMX_SC_R_SDHC_1 = common dso_local global i32 0, align 4
@IMX_CONN_SDHC1_CLK = common dso_local global i64 0, align 8
@.str.52 = private unnamed_addr constant [10 x i8] c"sdhc2_clk\00", align 1
@IMX_SC_R_SDHC_2 = common dso_local global i32 0, align 4
@IMX_CONN_SDHC2_CLK = common dso_local global i64 0, align 8
@.str.53 = private unnamed_addr constant [10 x i8] c"enet0_clk\00", align 1
@IMX_SC_R_ENET_0 = common dso_local global i32 0, align 4
@IMX_CONN_ENET0_ROOT_CLK = common dso_local global i64 0, align 8
@.str.54 = private unnamed_addr constant [17 x i8] c"enet0_bypass_clk\00", align 1
@IMX_SC_PM_CLK_BYPASS = common dso_local global i32 0, align 4
@IMX_CONN_ENET0_BYPASS_CLK = common dso_local global i64 0, align 8
@.str.55 = private unnamed_addr constant [16 x i8] c"enet0_rgmii_clk\00", align 1
@IMX_SC_PM_CLK_MISC0 = common dso_local global i32 0, align 4
@IMX_CONN_ENET0_RGMII_CLK = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [10 x i8] c"enet1_clk\00", align 1
@IMX_SC_R_ENET_1 = common dso_local global i32 0, align 4
@IMX_CONN_ENET1_ROOT_CLK = common dso_local global i64 0, align 8
@.str.57 = private unnamed_addr constant [17 x i8] c"enet1_bypass_clk\00", align 1
@IMX_CONN_ENET1_BYPASS_CLK = common dso_local global i64 0, align 8
@.str.58 = private unnamed_addr constant [16 x i8] c"enet1_rgmii_clk\00", align 1
@IMX_CONN_ENET1_RGMII_CLK = common dso_local global i64 0, align 8
@.str.59 = private unnamed_addr constant [12 x i8] c"gpmi_io_clk\00", align 1
@IMX_SC_R_NAND = common dso_local global i32 0, align 4
@IMX_SC_PM_CLK_MST_BUS = common dso_local global i32 0, align 4
@IMX_CONN_GPMI_BCH_IO_CLK = common dso_local global i64 0, align 8
@.str.60 = private unnamed_addr constant [13 x i8] c"gpmi_bch_clk\00", align 1
@IMX_CONN_GPMI_BCH_CLK = common dso_local global i64 0, align 8
@.str.61 = private unnamed_addr constant [14 x i8] c"usb3_aclk_div\00", align 1
@IMX_SC_R_USB_2 = common dso_local global i32 0, align 4
@IMX_CONN_USB2_ACLK = common dso_local global i64 0, align 8
@.str.62 = private unnamed_addr constant [13 x i8] c"usb3_bus_div\00", align 1
@IMX_CONN_USB2_BUS_CLK = common dso_local global i64 0, align 8
@.str.63 = private unnamed_addr constant [13 x i8] c"usb3_lpm_div\00", align 1
@IMX_SC_PM_CLK_MISC = common dso_local global i32 0, align 4
@IMX_CONN_USB2_LPM_CLK = common dso_local global i64 0, align 8
@.str.64 = private unnamed_addr constant [14 x i8] c"dc0_disp0_clk\00", align 1
@IMX_SC_R_DC_0 = common dso_local global i32 0, align 4
@IMX_DC0_DISP0_CLK = common dso_local global i64 0, align 8
@.str.65 = private unnamed_addr constant [14 x i8] c"dc0_disp1_clk\00", align 1
@IMX_SC_PM_CLK_MISC1 = common dso_local global i32 0, align 4
@IMX_DC0_DISP1_CLK = common dso_local global i64 0, align 8
@.str.66 = private unnamed_addr constant [15 x i8] c"mipi0_i2c0_clk\00", align 1
@IMX_SC_R_MIPI_0_I2C_0 = common dso_local global i32 0, align 4
@IMX_SC_PM_CLK_MISC2 = common dso_local global i32 0, align 4
@IMX_MIPI0_I2C0_CLK = common dso_local global i64 0, align 8
@.str.67 = private unnamed_addr constant [15 x i8] c"mipi0_i2c1_clk\00", align 1
@IMX_SC_R_MIPI_0_I2C_1 = common dso_local global i32 0, align 4
@IMX_MIPI0_I2C1_CLK = common dso_local global i64 0, align 8
@.str.68 = private unnamed_addr constant [19 x i8] c"mipi_csi0_core_clk\00", align 1
@IMX_SC_R_CSI_0 = common dso_local global i32 0, align 4
@IMX_CSI0_CORE_CLK = common dso_local global i64 0, align 8
@.str.69 = private unnamed_addr constant [18 x i8] c"mipi_csi0_esc_clk\00", align 1
@IMX_CSI0_ESC_CLK = common dso_local global i64 0, align 8
@.str.70 = private unnamed_addr constant [19 x i8] c"mipi_csi0_i2c0_clk\00", align 1
@IMX_SC_R_CSI_0_I2C_0 = common dso_local global i32 0, align 4
@IMX_CSI0_I2C0_CLK = common dso_local global i64 0, align 8
@.str.71 = private unnamed_addr constant [19 x i8] c"mipi_csi0_pwm0_clk\00", align 1
@IMX_SC_R_CSI_0_PWM_0 = common dso_local global i32 0, align 4
@IMX_CSI0_PWM0_CLK = common dso_local global i64 0, align 8
@.str.72 = private unnamed_addr constant [14 x i8] c"gpu_core0_clk\00", align 1
@IMX_SC_R_GPU_0_PID0 = common dso_local global i32 0, align 4
@IMX_GPU0_CORE_CLK = common dso_local global i64 0, align 8
@.str.73 = private unnamed_addr constant [16 x i8] c"gpu_shader0_clk\00", align 1
@IMX_GPU0_SHADER_CLK = common dso_local global i64 0, align 8
@.str.74 = private unnamed_addr constant [39 x i8] c"i.MX clk %u: register failed with %ld\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx8qxp_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8qxp_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clk_hw_onecell_data*, align 8
  %6 = alloca %struct.clk_hw**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = call i32 (...) @imx_clk_scu_init()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %483

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %22 = load i32, i32* @hws, align 4
  %23 = load i32, i32* @IMX_SCU_CLK_END, align 4
  %24 = call i32 @struct_size(%struct.clk_hw_onecell_data* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.TYPE_2__* %20, i32 %24, i32 %25)
  store %struct.clk_hw_onecell_data* %26, %struct.clk_hw_onecell_data** %5, align 8
  %27 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %28 = icmp ne %struct.clk_hw_onecell_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %483

32:                                               ; preds = %18
  %33 = load i32, i32* @IMX_SCU_CLK_END, align 4
  %34 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %35 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %37 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %36, i32 0, i32 1
  %38 = load %struct.clk_hw**, %struct.clk_hw*** %37, align 8
  store %struct.clk_hw** %38, %struct.clk_hw*** %6, align 8
  %39 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 0)
  %40 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %41 = load i64, i64* @IMX_CLK_DUMMY, align 8
  %42 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %40, i64 %41
  store %struct.clk_hw* %39, %struct.clk_hw** %42, align 8
  %43 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0, i32 120000000)
  %44 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %45 = load i64, i64* @IMX_ADMA_IPG_CLK_ROOT, align 8
  %46 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %44, i64 %45
  store %struct.clk_hw* %43, %struct.clk_hw** %46, align 8
  %47 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32 333333333)
  %48 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %49 = load i64, i64* @IMX_CONN_AXI_CLK_ROOT, align 8
  %50 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %48, i64 %49
  store %struct.clk_hw* %47, %struct.clk_hw** %50, align 8
  %51 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 166666666)
  %52 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %53 = load i64, i64* @IMX_CONN_AHB_CLK_ROOT, align 8
  %54 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %52, i64 %53
  store %struct.clk_hw* %51, %struct.clk_hw** %54, align 8
  %55 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0, i32 83333333)
  %56 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %57 = load i64, i64* @IMX_CONN_IPG_CLK_ROOT, align 8
  %58 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %56, i64 %57
  store %struct.clk_hw* %55, %struct.clk_hw** %58, align 8
  %59 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0, i32 800000000)
  %60 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %61 = load i64, i64* @IMX_DC_AXI_EXT_CLK, align 8
  %62 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %60, i64 %61
  store %struct.clk_hw* %59, %struct.clk_hw** %62, align 8
  %63 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 0, i32 400000000)
  %64 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %65 = load i64, i64* @IMX_DC_AXI_INT_CLK, align 8
  %66 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %64, i64 %65
  store %struct.clk_hw* %63, %struct.clk_hw** %66, align 8
  %67 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 0, i32 100000000)
  %68 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %69 = load i64, i64* @IMX_DC_CFG_CLK, align 8
  %70 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %68, i64 %69
  store %struct.clk_hw* %67, %struct.clk_hw** %70, align 8
  %71 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 0, i32 120000000)
  %72 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %73 = load i64, i64* @IMX_MIPI_IPG_CLK, align 8
  %74 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %72, i64 %73
  store %struct.clk_hw* %71, %struct.clk_hw** %74, align 8
  %75 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 0, i32 400000000)
  %76 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %77 = load i64, i64* @IMX_IMG_AXI_CLK, align 8
  %78 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %76, i64 %77
  store %struct.clk_hw* %75, %struct.clk_hw** %78, align 8
  %79 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* null, i32 0, i32 200000000)
  %80 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %81 = load i64, i64* @IMX_IMG_IPG_CLK, align 8
  %82 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %80, i64 %81
  store %struct.clk_hw* %79, %struct.clk_hw** %82, align 8
  %83 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 0, i32 600000000)
  %84 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %85 = load i64, i64* @IMX_IMG_PXL_CLK, align 8
  %86 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %84, i64 %85
  store %struct.clk_hw* %83, %struct.clk_hw** %86, align 8
  %87 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 0, i32 400000000)
  %88 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %89 = load i64, i64* @IMX_HSIO_AXI_CLK, align 8
  %90 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %88, i64 %89
  store %struct.clk_hw* %87, %struct.clk_hw** %90, align 8
  %91 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 0, i32 133333333)
  %92 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %93 = load i64, i64* @IMX_HSIO_PER_CLK, align 8
  %94 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %92, i64 %93
  store %struct.clk_hw* %91, %struct.clk_hw** %94, align 8
  %95 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 0, i32 200000000)
  %96 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %97 = load i64, i64* @IMX_LSIO_MEM_CLK, align 8
  %98 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %96, i64 %97
  store %struct.clk_hw* %95, %struct.clk_hw** %98, align 8
  %99 = call %struct.clk_hw* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 0, i32 100000000)
  %100 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %101 = load i64, i64* @IMX_LSIO_BUS_CLK, align 8
  %102 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %100, i64 %101
  store %struct.clk_hw* %99, %struct.clk_hw** %102, align 8
  %103 = load i32, i32* @IMX_SC_R_A35, align 4
  %104 = load i32, i32* @IMX_SC_PM_CLK_CPU, align 4
  %105 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %107 = load i64, i64* @IMX_A35_CLK, align 8
  %108 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %106, i64 %107
  store %struct.clk_hw* %105, %struct.clk_hw** %108, align 8
  %109 = load i32, i32* @IMX_SC_R_PWM_0, align 4
  %110 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %111 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %113 = load i64, i64* @IMX_LSIO_PWM0_CLK, align 8
  %114 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %112, i64 %113
  store %struct.clk_hw* %111, %struct.clk_hw** %114, align 8
  %115 = load i32, i32* @IMX_SC_R_PWM_1, align 4
  %116 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %117 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %119 = load i64, i64* @IMX_LSIO_PWM1_CLK, align 8
  %120 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %118, i64 %119
  store %struct.clk_hw* %117, %struct.clk_hw** %120, align 8
  %121 = load i32, i32* @IMX_SC_R_PWM_2, align 4
  %122 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %123 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %125 = load i64, i64* @IMX_LSIO_PWM2_CLK, align 8
  %126 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %124, i64 %125
  store %struct.clk_hw* %123, %struct.clk_hw** %126, align 8
  %127 = load i32, i32* @IMX_SC_R_PWM_3, align 4
  %128 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %129 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %131 = load i64, i64* @IMX_LSIO_PWM3_CLK, align 8
  %132 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %130, i64 %131
  store %struct.clk_hw* %129, %struct.clk_hw** %132, align 8
  %133 = load i32, i32* @IMX_SC_R_PWM_4, align 4
  %134 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %135 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %137 = load i64, i64* @IMX_LSIO_PWM4_CLK, align 8
  %138 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %136, i64 %137
  store %struct.clk_hw* %135, %struct.clk_hw** %138, align 8
  %139 = load i32, i32* @IMX_SC_R_PWM_5, align 4
  %140 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %141 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %143 = load i64, i64* @IMX_LSIO_PWM5_CLK, align 8
  %144 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %142, i64 %143
  store %struct.clk_hw* %141, %struct.clk_hw** %144, align 8
  %145 = load i32, i32* @IMX_SC_R_PWM_6, align 4
  %146 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %147 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %149 = load i64, i64* @IMX_LSIO_PWM6_CLK, align 8
  %150 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %148, i64 %149
  store %struct.clk_hw* %147, %struct.clk_hw** %150, align 8
  %151 = load i32, i32* @IMX_SC_R_PWM_7, align 4
  %152 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %153 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %155 = load i64, i64* @IMX_LSIO_PWM7_CLK, align 8
  %156 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %154, i64 %155
  store %struct.clk_hw* %153, %struct.clk_hw** %156, align 8
  %157 = load i32, i32* @IMX_SC_R_GPT_0, align 4
  %158 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %159 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %157, i32 %158)
  %160 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %161 = load i64, i64* @IMX_LSIO_GPT0_CLK, align 8
  %162 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %160, i64 %161
  store %struct.clk_hw* %159, %struct.clk_hw** %162, align 8
  %163 = load i32, i32* @IMX_SC_R_GPT_1, align 4
  %164 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %165 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %167 = load i64, i64* @IMX_LSIO_GPT1_CLK, align 8
  %168 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %166, i64 %167
  store %struct.clk_hw* %165, %struct.clk_hw** %168, align 8
  %169 = load i32, i32* @IMX_SC_R_GPT_2, align 4
  %170 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %171 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %173 = load i64, i64* @IMX_LSIO_GPT2_CLK, align 8
  %174 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %172, i64 %173
  store %struct.clk_hw* %171, %struct.clk_hw** %174, align 8
  %175 = load i32, i32* @IMX_SC_R_GPT_3, align 4
  %176 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %177 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 %175, i32 %176)
  %178 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %179 = load i64, i64* @IMX_LSIO_GPT3_CLK, align 8
  %180 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %178, i64 %179
  store %struct.clk_hw* %177, %struct.clk_hw** %180, align 8
  %181 = load i32, i32* @IMX_SC_R_GPT_4, align 4
  %182 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %183 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %185 = load i64, i64* @IMX_LSIO_GPT4_CLK, align 8
  %186 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %184, i64 %185
  store %struct.clk_hw* %183, %struct.clk_hw** %186, align 8
  %187 = load i32, i32* @IMX_SC_R_FSPI_0, align 4
  %188 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %189 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %191 = load i64, i64* @IMX_LSIO_FSPI0_CLK, align 8
  %192 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %190, i64 %191
  store %struct.clk_hw* %189, %struct.clk_hw** %192, align 8
  %193 = load i32, i32* @IMX_SC_R_FSPI_1, align 4
  %194 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %195 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %197 = load i64, i64* @IMX_LSIO_FSPI1_CLK, align 8
  %198 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %196, i64 %197
  store %struct.clk_hw* %195, %struct.clk_hw** %198, align 8
  %199 = load i32, i32* @IMX_SC_R_UART_0, align 4
  %200 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %201 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %203 = load i64, i64* @IMX_ADMA_UART0_CLK, align 8
  %204 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %202, i64 %203
  store %struct.clk_hw* %201, %struct.clk_hw** %204, align 8
  %205 = load i32, i32* @IMX_SC_R_UART_1, align 4
  %206 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %207 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 %205, i32 %206)
  %208 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %209 = load i64, i64* @IMX_ADMA_UART1_CLK, align 8
  %210 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %208, i64 %209
  store %struct.clk_hw* %207, %struct.clk_hw** %210, align 8
  %211 = load i32, i32* @IMX_SC_R_UART_2, align 4
  %212 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %213 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i32 %211, i32 %212)
  %214 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %215 = load i64, i64* @IMX_ADMA_UART2_CLK, align 8
  %216 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %214, i64 %215
  store %struct.clk_hw* %213, %struct.clk_hw** %216, align 8
  %217 = load i32, i32* @IMX_SC_R_UART_3, align 4
  %218 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %219 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i32 %217, i32 %218)
  %220 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %221 = load i64, i64* @IMX_ADMA_UART3_CLK, align 8
  %222 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %220, i64 %221
  store %struct.clk_hw* %219, %struct.clk_hw** %222, align 8
  %223 = load i32, i32* @IMX_SC_R_SPI_0, align 4
  %224 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %225 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %227 = load i64, i64* @IMX_ADMA_SPI0_CLK, align 8
  %228 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %226, i64 %227
  store %struct.clk_hw* %225, %struct.clk_hw** %228, align 8
  %229 = load i32, i32* @IMX_SC_R_SPI_1, align 4
  %230 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %231 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %233 = load i64, i64* @IMX_ADMA_SPI1_CLK, align 8
  %234 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %232, i64 %233
  store %struct.clk_hw* %231, %struct.clk_hw** %234, align 8
  %235 = load i32, i32* @IMX_SC_R_SPI_2, align 4
  %236 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %237 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i32 %235, i32 %236)
  %238 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %239 = load i64, i64* @IMX_ADMA_SPI2_CLK, align 8
  %240 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %238, i64 %239
  store %struct.clk_hw* %237, %struct.clk_hw** %240, align 8
  %241 = load i32, i32* @IMX_SC_R_SPI_3, align 4
  %242 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %243 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i32 %241, i32 %242)
  %244 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %245 = load i64, i64* @IMX_ADMA_SPI3_CLK, align 8
  %246 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %244, i64 %245
  store %struct.clk_hw* %243, %struct.clk_hw** %246, align 8
  %247 = load i32, i32* @IMX_SC_R_CAN_0, align 4
  %248 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %249 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i32 %247, i32 %248)
  %250 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %251 = load i64, i64* @IMX_ADMA_CAN0_CLK, align 8
  %252 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %250, i64 %251
  store %struct.clk_hw* %249, %struct.clk_hw** %252, align 8
  %253 = load i32, i32* @IMX_SC_R_I2C_0, align 4
  %254 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %255 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i32 %253, i32 %254)
  %256 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %257 = load i64, i64* @IMX_ADMA_I2C0_CLK, align 8
  %258 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %256, i64 %257
  store %struct.clk_hw* %255, %struct.clk_hw** %258, align 8
  %259 = load i32, i32* @IMX_SC_R_I2C_1, align 4
  %260 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %261 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32 %259, i32 %260)
  %262 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %263 = load i64, i64* @IMX_ADMA_I2C1_CLK, align 8
  %264 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %262, i64 %263
  store %struct.clk_hw* %261, %struct.clk_hw** %264, align 8
  %265 = load i32, i32* @IMX_SC_R_I2C_2, align 4
  %266 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %267 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0), i32 %265, i32 %266)
  %268 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %269 = load i64, i64* @IMX_ADMA_I2C2_CLK, align 8
  %270 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %268, i64 %269
  store %struct.clk_hw* %267, %struct.clk_hw** %270, align 8
  %271 = load i32, i32* @IMX_SC_R_I2C_3, align 4
  %272 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %273 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i32 %271, i32 %272)
  %274 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %275 = load i64, i64* @IMX_ADMA_I2C3_CLK, align 8
  %276 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %274, i64 %275
  store %struct.clk_hw* %273, %struct.clk_hw** %276, align 8
  %277 = load i32, i32* @IMX_SC_R_FTM_0, align 4
  %278 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %279 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i32 %277, i32 %278)
  %280 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %281 = load i64, i64* @IMX_ADMA_FTM0_CLK, align 8
  %282 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %280, i64 %281
  store %struct.clk_hw* %279, %struct.clk_hw** %282, align 8
  %283 = load i32, i32* @IMX_SC_R_FTM_1, align 4
  %284 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %285 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i32 %283, i32 %284)
  %286 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %287 = load i64, i64* @IMX_ADMA_FTM1_CLK, align 8
  %288 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %286, i64 %287
  store %struct.clk_hw* %285, %struct.clk_hw** %288, align 8
  %289 = load i32, i32* @IMX_SC_R_ADC_0, align 4
  %290 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %291 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), i32 %289, i32 %290)
  %292 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %293 = load i64, i64* @IMX_ADMA_ADC0_CLK, align 8
  %294 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %292, i64 %293
  store %struct.clk_hw* %291, %struct.clk_hw** %294, align 8
  %295 = load i32, i32* @IMX_SC_R_LCD_0_PWM_0, align 4
  %296 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %297 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i32 %295, i32 %296)
  %298 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %299 = load i64, i64* @IMX_ADMA_PWM_CLK, align 8
  %300 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %298, i64 %299
  store %struct.clk_hw* %297, %struct.clk_hw** %300, align 8
  %301 = load i32, i32* @IMX_SC_R_LCD_0, align 4
  %302 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %303 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i32 %301, i32 %302)
  %304 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %305 = load i64, i64* @IMX_ADMA_LCD_CLK, align 8
  %306 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %304, i64 %305
  store %struct.clk_hw* %303, %struct.clk_hw** %306, align 8
  %307 = load i32, i32* @IMX_SC_R_SDHC_0, align 4
  %308 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %309 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i32 %307, i32 %308)
  %310 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %311 = load i64, i64* @IMX_CONN_SDHC0_CLK, align 8
  %312 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %310, i64 %311
  store %struct.clk_hw* %309, %struct.clk_hw** %312, align 8
  %313 = load i32, i32* @IMX_SC_R_SDHC_1, align 4
  %314 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %315 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i32 %313, i32 %314)
  %316 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %317 = load i64, i64* @IMX_CONN_SDHC1_CLK, align 8
  %318 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %316, i64 %317
  store %struct.clk_hw* %315, %struct.clk_hw** %318, align 8
  %319 = load i32, i32* @IMX_SC_R_SDHC_2, align 4
  %320 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %321 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 %319, i32 %320)
  %322 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %323 = load i64, i64* @IMX_CONN_SDHC2_CLK, align 8
  %324 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %322, i64 %323
  store %struct.clk_hw* %321, %struct.clk_hw** %324, align 8
  %325 = load i32, i32* @IMX_SC_R_ENET_0, align 4
  %326 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %327 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i32 %325, i32 %326)
  %328 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %329 = load i64, i64* @IMX_CONN_ENET0_ROOT_CLK, align 8
  %330 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %328, i64 %329
  store %struct.clk_hw* %327, %struct.clk_hw** %330, align 8
  %331 = load i32, i32* @IMX_SC_R_ENET_0, align 4
  %332 = load i32, i32* @IMX_SC_PM_CLK_BYPASS, align 4
  %333 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i32 %331, i32 %332)
  %334 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %335 = load i64, i64* @IMX_CONN_ENET0_BYPASS_CLK, align 8
  %336 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %334, i64 %335
  store %struct.clk_hw* %333, %struct.clk_hw** %336, align 8
  %337 = load i32, i32* @IMX_SC_R_ENET_0, align 4
  %338 = load i32, i32* @IMX_SC_PM_CLK_MISC0, align 4
  %339 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i32 %337, i32 %338)
  %340 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %341 = load i64, i64* @IMX_CONN_ENET0_RGMII_CLK, align 8
  %342 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %340, i64 %341
  store %struct.clk_hw* %339, %struct.clk_hw** %342, align 8
  %343 = load i32, i32* @IMX_SC_R_ENET_1, align 4
  %344 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %345 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0), i32 %343, i32 %344)
  %346 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %347 = load i64, i64* @IMX_CONN_ENET1_ROOT_CLK, align 8
  %348 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %346, i64 %347
  store %struct.clk_hw* %345, %struct.clk_hw** %348, align 8
  %349 = load i32, i32* @IMX_SC_R_ENET_1, align 4
  %350 = load i32, i32* @IMX_SC_PM_CLK_BYPASS, align 4
  %351 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 %349, i32 %350)
  %352 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %353 = load i64, i64* @IMX_CONN_ENET1_BYPASS_CLK, align 8
  %354 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %352, i64 %353
  store %struct.clk_hw* %351, %struct.clk_hw** %354, align 8
  %355 = load i32, i32* @IMX_SC_R_ENET_1, align 4
  %356 = load i32, i32* @IMX_SC_PM_CLK_MISC0, align 4
  %357 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i64 0, i64 0), i32 %355, i32 %356)
  %358 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %359 = load i64, i64* @IMX_CONN_ENET1_RGMII_CLK, align 8
  %360 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %358, i64 %359
  store %struct.clk_hw* %357, %struct.clk_hw** %360, align 8
  %361 = load i32, i32* @IMX_SC_R_NAND, align 4
  %362 = load i32, i32* @IMX_SC_PM_CLK_MST_BUS, align 4
  %363 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i32 %361, i32 %362)
  %364 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %365 = load i64, i64* @IMX_CONN_GPMI_BCH_IO_CLK, align 8
  %366 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %364, i64 %365
  store %struct.clk_hw* %363, %struct.clk_hw** %366, align 8
  %367 = load i32, i32* @IMX_SC_R_NAND, align 4
  %368 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %369 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i32 %367, i32 %368)
  %370 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %371 = load i64, i64* @IMX_CONN_GPMI_BCH_CLK, align 8
  %372 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %370, i64 %371
  store %struct.clk_hw* %369, %struct.clk_hw** %372, align 8
  %373 = load i32, i32* @IMX_SC_R_USB_2, align 4
  %374 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %375 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i64 0, i64 0), i32 %373, i32 %374)
  %376 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %377 = load i64, i64* @IMX_CONN_USB2_ACLK, align 8
  %378 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %376, i64 %377
  store %struct.clk_hw* %375, %struct.clk_hw** %378, align 8
  %379 = load i32, i32* @IMX_SC_R_USB_2, align 4
  %380 = load i32, i32* @IMX_SC_PM_CLK_MST_BUS, align 4
  %381 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i32 %379, i32 %380)
  %382 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %383 = load i64, i64* @IMX_CONN_USB2_BUS_CLK, align 8
  %384 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %382, i64 %383
  store %struct.clk_hw* %381, %struct.clk_hw** %384, align 8
  %385 = load i32, i32* @IMX_SC_R_USB_2, align 4
  %386 = load i32, i32* @IMX_SC_PM_CLK_MISC, align 4
  %387 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i32 %385, i32 %386)
  %388 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %389 = load i64, i64* @IMX_CONN_USB2_LPM_CLK, align 8
  %390 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %388, i64 %389
  store %struct.clk_hw* %387, %struct.clk_hw** %390, align 8
  %391 = load i32, i32* @IMX_SC_R_DC_0, align 4
  %392 = load i32, i32* @IMX_SC_PM_CLK_MISC0, align 4
  %393 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0), i32 %391, i32 %392)
  %394 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %395 = load i64, i64* @IMX_DC0_DISP0_CLK, align 8
  %396 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %394, i64 %395
  store %struct.clk_hw* %393, %struct.clk_hw** %396, align 8
  %397 = load i32, i32* @IMX_SC_R_DC_0, align 4
  %398 = load i32, i32* @IMX_SC_PM_CLK_MISC1, align 4
  %399 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i32 %397, i32 %398)
  %400 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %401 = load i64, i64* @IMX_DC0_DISP1_CLK, align 8
  %402 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %400, i64 %401
  store %struct.clk_hw* %399, %struct.clk_hw** %402, align 8
  %403 = load i32, i32* @IMX_SC_R_MIPI_0_I2C_0, align 4
  %404 = load i32, i32* @IMX_SC_PM_CLK_MISC2, align 4
  %405 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0), i32 %403, i32 %404)
  %406 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %407 = load i64, i64* @IMX_MIPI0_I2C0_CLK, align 8
  %408 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %406, i64 %407
  store %struct.clk_hw* %405, %struct.clk_hw** %408, align 8
  %409 = load i32, i32* @IMX_SC_R_MIPI_0_I2C_1, align 4
  %410 = load i32, i32* @IMX_SC_PM_CLK_MISC2, align 4
  %411 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i32 %409, i32 %410)
  %412 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %413 = load i64, i64* @IMX_MIPI0_I2C1_CLK, align 8
  %414 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %412, i64 %413
  store %struct.clk_hw* %411, %struct.clk_hw** %414, align 8
  %415 = load i32, i32* @IMX_SC_R_CSI_0, align 4
  %416 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %417 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i64 0, i64 0), i32 %415, i32 %416)
  %418 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %419 = load i64, i64* @IMX_CSI0_CORE_CLK, align 8
  %420 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %418, i64 %419
  store %struct.clk_hw* %417, %struct.clk_hw** %420, align 8
  %421 = load i32, i32* @IMX_SC_R_CSI_0, align 4
  %422 = load i32, i32* @IMX_SC_PM_CLK_MISC, align 4
  %423 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0), i32 %421, i32 %422)
  %424 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %425 = load i64, i64* @IMX_CSI0_ESC_CLK, align 8
  %426 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %424, i64 %425
  store %struct.clk_hw* %423, %struct.clk_hw** %426, align 8
  %427 = load i32, i32* @IMX_SC_R_CSI_0_I2C_0, align 4
  %428 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %429 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0), i32 %427, i32 %428)
  %430 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %431 = load i64, i64* @IMX_CSI0_I2C0_CLK, align 8
  %432 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %430, i64 %431
  store %struct.clk_hw* %429, %struct.clk_hw** %432, align 8
  %433 = load i32, i32* @IMX_SC_R_CSI_0_PWM_0, align 4
  %434 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %435 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i64 0, i64 0), i32 %433, i32 %434)
  %436 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %437 = load i64, i64* @IMX_CSI0_PWM0_CLK, align 8
  %438 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %436, i64 %437
  store %struct.clk_hw* %435, %struct.clk_hw** %438, align 8
  %439 = load i32, i32* @IMX_SC_R_GPU_0_PID0, align 4
  %440 = load i32, i32* @IMX_SC_PM_CLK_PER, align 4
  %441 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i64 0, i64 0), i32 %439, i32 %440)
  %442 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %443 = load i64, i64* @IMX_GPU0_CORE_CLK, align 8
  %444 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %442, i64 %443
  store %struct.clk_hw* %441, %struct.clk_hw** %444, align 8
  %445 = load i32, i32* @IMX_SC_R_GPU_0_PID0, align 4
  %446 = load i32, i32* @IMX_SC_PM_CLK_MISC, align 4
  %447 = call %struct.clk_hw* @imx_clk_scu(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0), i32 %445, i32 %446)
  %448 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %449 = load i64, i64* @IMX_GPU0_SHADER_CLK, align 8
  %450 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %448, i64 %449
  store %struct.clk_hw* %447, %struct.clk_hw** %450, align 8
  store i32 0, i32* %8, align 4
  br label %451

451:                                              ; preds = %475, %32
  %452 = load i32, i32* %8, align 4
  %453 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %454 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = icmp slt i32 %452, %455
  br i1 %456, label %457, label %478

457:                                              ; preds = %451
  %458 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %458, i64 %460
  %462 = load %struct.clk_hw*, %struct.clk_hw** %461, align 8
  %463 = call i64 @IS_ERR(%struct.clk_hw* %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %474

465:                                              ; preds = %457
  %466 = load i32, i32* %8, align 4
  %467 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %468 = load i32, i32* %8, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %467, i64 %469
  %471 = load %struct.clk_hw*, %struct.clk_hw** %470, align 8
  %472 = call i32 @PTR_ERR(%struct.clk_hw* %471)
  %473 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i32 %466, i32 %472)
  br label %474

474:                                              ; preds = %465, %457
  br label %475

475:                                              ; preds = %474
  %476 = load i32, i32* %8, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %8, align 4
  br label %451

478:                                              ; preds = %451
  %479 = load %struct.device_node*, %struct.device_node** %4, align 8
  %480 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %481 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %482 = call i32 @of_clk_add_hw_provider(%struct.device_node* %479, i32 %480, %struct.clk_hw_onecell_data* %481)
  store i32 %482, i32* %2, align 4
  br label %483

483:                                              ; preds = %478, %29, %16
  %484 = load i32, i32* %2, align 4
  ret i32 %484
}

declare dso_local i32 @imx_clk_scu_init(...) #1

declare dso_local %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.clk_hw_onecell_data*, i32, i32) #1

declare dso_local %struct.clk_hw* @clk_hw_register_fixed_rate(i32*, i8*, i32*, i32, i32) #1

declare dso_local %struct.clk_hw* @imx_clk_scu(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk_hw*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.clk_hw*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.clk_hw_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
