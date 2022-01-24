#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk_hw_onecell_data {int num; struct clk_hw** hws; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IMX_A35_CLK ; 
 size_t IMX_ADMA_ADC0_CLK ; 
 size_t IMX_ADMA_CAN0_CLK ; 
 size_t IMX_ADMA_FTM0_CLK ; 
 size_t IMX_ADMA_FTM1_CLK ; 
 size_t IMX_ADMA_I2C0_CLK ; 
 size_t IMX_ADMA_I2C1_CLK ; 
 size_t IMX_ADMA_I2C2_CLK ; 
 size_t IMX_ADMA_I2C3_CLK ; 
 size_t IMX_ADMA_IPG_CLK_ROOT ; 
 size_t IMX_ADMA_LCD_CLK ; 
 size_t IMX_ADMA_PWM_CLK ; 
 size_t IMX_ADMA_SPI0_CLK ; 
 size_t IMX_ADMA_SPI1_CLK ; 
 size_t IMX_ADMA_SPI2_CLK ; 
 size_t IMX_ADMA_SPI3_CLK ; 
 size_t IMX_ADMA_UART0_CLK ; 
 size_t IMX_ADMA_UART1_CLK ; 
 size_t IMX_ADMA_UART2_CLK ; 
 size_t IMX_ADMA_UART3_CLK ; 
 size_t IMX_CLK_DUMMY ; 
 size_t IMX_CONN_AHB_CLK_ROOT ; 
 size_t IMX_CONN_AXI_CLK_ROOT ; 
 size_t IMX_CONN_ENET0_BYPASS_CLK ; 
 size_t IMX_CONN_ENET0_RGMII_CLK ; 
 size_t IMX_CONN_ENET0_ROOT_CLK ; 
 size_t IMX_CONN_ENET1_BYPASS_CLK ; 
 size_t IMX_CONN_ENET1_RGMII_CLK ; 
 size_t IMX_CONN_ENET1_ROOT_CLK ; 
 size_t IMX_CONN_GPMI_BCH_CLK ; 
 size_t IMX_CONN_GPMI_BCH_IO_CLK ; 
 size_t IMX_CONN_IPG_CLK_ROOT ; 
 size_t IMX_CONN_SDHC0_CLK ; 
 size_t IMX_CONN_SDHC1_CLK ; 
 size_t IMX_CONN_SDHC2_CLK ; 
 size_t IMX_CONN_USB2_ACLK ; 
 size_t IMX_CONN_USB2_BUS_CLK ; 
 size_t IMX_CONN_USB2_LPM_CLK ; 
 size_t IMX_CSI0_CORE_CLK ; 
 size_t IMX_CSI0_ESC_CLK ; 
 size_t IMX_CSI0_I2C0_CLK ; 
 size_t IMX_CSI0_PWM0_CLK ; 
 size_t IMX_DC0_DISP0_CLK ; 
 size_t IMX_DC0_DISP1_CLK ; 
 size_t IMX_DC_AXI_EXT_CLK ; 
 size_t IMX_DC_AXI_INT_CLK ; 
 size_t IMX_DC_CFG_CLK ; 
 size_t IMX_GPU0_CORE_CLK ; 
 size_t IMX_GPU0_SHADER_CLK ; 
 size_t IMX_HSIO_AXI_CLK ; 
 size_t IMX_HSIO_PER_CLK ; 
 size_t IMX_IMG_AXI_CLK ; 
 size_t IMX_IMG_IPG_CLK ; 
 size_t IMX_IMG_PXL_CLK ; 
 size_t IMX_LSIO_BUS_CLK ; 
 size_t IMX_LSIO_FSPI0_CLK ; 
 size_t IMX_LSIO_FSPI1_CLK ; 
 size_t IMX_LSIO_GPT0_CLK ; 
 size_t IMX_LSIO_GPT1_CLK ; 
 size_t IMX_LSIO_GPT2_CLK ; 
 size_t IMX_LSIO_GPT3_CLK ; 
 size_t IMX_LSIO_GPT4_CLK ; 
 size_t IMX_LSIO_MEM_CLK ; 
 size_t IMX_LSIO_PWM0_CLK ; 
 size_t IMX_LSIO_PWM1_CLK ; 
 size_t IMX_LSIO_PWM2_CLK ; 
 size_t IMX_LSIO_PWM3_CLK ; 
 size_t IMX_LSIO_PWM4_CLK ; 
 size_t IMX_LSIO_PWM5_CLK ; 
 size_t IMX_LSIO_PWM6_CLK ; 
 size_t IMX_LSIO_PWM7_CLK ; 
 size_t IMX_MIPI0_I2C0_CLK ; 
 size_t IMX_MIPI0_I2C1_CLK ; 
 size_t IMX_MIPI_IPG_CLK ; 
 int IMX_SCU_CLK_END ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_BYPASS ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_CPU ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_MISC ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_MISC0 ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_MISC1 ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_MISC2 ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_MST_BUS ; 
 int /*<<< orphan*/  IMX_SC_PM_CLK_PER ; 
 int /*<<< orphan*/  IMX_SC_R_A35 ; 
 int /*<<< orphan*/  IMX_SC_R_ADC_0 ; 
 int /*<<< orphan*/  IMX_SC_R_CAN_0 ; 
 int /*<<< orphan*/  IMX_SC_R_CSI_0 ; 
 int /*<<< orphan*/  IMX_SC_R_CSI_0_I2C_0 ; 
 int /*<<< orphan*/  IMX_SC_R_CSI_0_PWM_0 ; 
 int /*<<< orphan*/  IMX_SC_R_DC_0 ; 
 int /*<<< orphan*/  IMX_SC_R_ENET_0 ; 
 int /*<<< orphan*/  IMX_SC_R_ENET_1 ; 
 int /*<<< orphan*/  IMX_SC_R_FSPI_0 ; 
 int /*<<< orphan*/  IMX_SC_R_FSPI_1 ; 
 int /*<<< orphan*/  IMX_SC_R_FTM_0 ; 
 int /*<<< orphan*/  IMX_SC_R_FTM_1 ; 
 int /*<<< orphan*/  IMX_SC_R_GPT_0 ; 
 int /*<<< orphan*/  IMX_SC_R_GPT_1 ; 
 int /*<<< orphan*/  IMX_SC_R_GPT_2 ; 
 int /*<<< orphan*/  IMX_SC_R_GPT_3 ; 
 int /*<<< orphan*/  IMX_SC_R_GPT_4 ; 
 int /*<<< orphan*/  IMX_SC_R_GPU_0_PID0 ; 
 int /*<<< orphan*/  IMX_SC_R_I2C_0 ; 
 int /*<<< orphan*/  IMX_SC_R_I2C_1 ; 
 int /*<<< orphan*/  IMX_SC_R_I2C_2 ; 
 int /*<<< orphan*/  IMX_SC_R_I2C_3 ; 
 int /*<<< orphan*/  IMX_SC_R_LCD_0 ; 
 int /*<<< orphan*/  IMX_SC_R_LCD_0_PWM_0 ; 
 int /*<<< orphan*/  IMX_SC_R_MIPI_0_I2C_0 ; 
 int /*<<< orphan*/  IMX_SC_R_MIPI_0_I2C_1 ; 
 int /*<<< orphan*/  IMX_SC_R_NAND ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_0 ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_1 ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_2 ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_3 ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_4 ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_5 ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_6 ; 
 int /*<<< orphan*/  IMX_SC_R_PWM_7 ; 
 int /*<<< orphan*/  IMX_SC_R_SDHC_0 ; 
 int /*<<< orphan*/  IMX_SC_R_SDHC_1 ; 
 int /*<<< orphan*/  IMX_SC_R_SDHC_2 ; 
 int /*<<< orphan*/  IMX_SC_R_SPI_0 ; 
 int /*<<< orphan*/  IMX_SC_R_SPI_1 ; 
 int /*<<< orphan*/  IMX_SC_R_SPI_2 ; 
 int /*<<< orphan*/  IMX_SC_R_SPI_3 ; 
 int /*<<< orphan*/  IMX_SC_R_UART_0 ; 
 int /*<<< orphan*/  IMX_SC_R_UART_1 ; 
 int /*<<< orphan*/  IMX_SC_R_UART_2 ; 
 int /*<<< orphan*/  IMX_SC_R_UART_3 ; 
 int /*<<< orphan*/  IMX_SC_R_USB_2 ; 
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct clk_hw_onecell_data* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hws ; 
 struct clk_hw* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ,struct clk_hw_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct clk_hw_onecell_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device_node *ccm_node = pdev->dev.of_node;
	struct clk_hw_onecell_data *clk_data;
	struct clk_hw **clks;
	int ret, i;

	ret = FUNC5();
	if (ret)
		return ret;

	clk_data = FUNC3(&pdev->dev, FUNC8(clk_data, hws,
				IMX_SCU_CLK_END), GFP_KERNEL);
	if (!clk_data)
		return -ENOMEM;

	clk_data->num = IMX_SCU_CLK_END;
	clks = clk_data->hws;

	/* Fixed clocks */
	clks[IMX_CLK_DUMMY]		= FUNC2(NULL, "dummy", NULL, 0, 0);
	clks[IMX_ADMA_IPG_CLK_ROOT] 	= FUNC2(NULL, "dma_ipg_clk_root", NULL, 0, 120000000);
	clks[IMX_CONN_AXI_CLK_ROOT]	= FUNC2(NULL, "conn_axi_clk_root", NULL, 0, 333333333);
	clks[IMX_CONN_AHB_CLK_ROOT]	= FUNC2(NULL, "conn_ahb_clk_root", NULL, 0, 166666666);
	clks[IMX_CONN_IPG_CLK_ROOT]	= FUNC2(NULL, "conn_ipg_clk_root", NULL, 0, 83333333);
	clks[IMX_DC_AXI_EXT_CLK]	= FUNC2(NULL, "dc_axi_ext_clk_root", NULL, 0, 800000000);
	clks[IMX_DC_AXI_INT_CLK]	= FUNC2(NULL, "dc_axi_int_clk_root", NULL, 0, 400000000);
	clks[IMX_DC_CFG_CLK]		= FUNC2(NULL, "dc_cfg_clk_root", NULL, 0, 100000000);
	clks[IMX_MIPI_IPG_CLK]		= FUNC2(NULL, "mipi_ipg_clk_root", NULL, 0, 120000000);
	clks[IMX_IMG_AXI_CLK]		= FUNC2(NULL, "img_axi_clk_root", NULL, 0, 400000000);
	clks[IMX_IMG_IPG_CLK]		= FUNC2(NULL, "img_ipg_clk_root", NULL, 0, 200000000);
	clks[IMX_IMG_PXL_CLK]		= FUNC2(NULL, "img_pxl_clk_root", NULL, 0, 600000000);
	clks[IMX_HSIO_AXI_CLK]		= FUNC2(NULL, "hsio_axi_clk_root", NULL, 0, 400000000);
	clks[IMX_HSIO_PER_CLK]		= FUNC2(NULL, "hsio_per_clk_root", NULL, 0, 133333333);
	clks[IMX_LSIO_MEM_CLK]		= FUNC2(NULL, "lsio_mem_clk_root", NULL, 0, 200000000);
	clks[IMX_LSIO_BUS_CLK]		= FUNC2(NULL, "lsio_bus_clk_root", NULL, 0, 100000000);

	/* ARM core */
	clks[IMX_A35_CLK]		= FUNC4("a35_clk", IMX_SC_R_A35, IMX_SC_PM_CLK_CPU);

	/* LSIO SS */
	clks[IMX_LSIO_PWM0_CLK]		= FUNC4("pwm0_clk", IMX_SC_R_PWM_0, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_PWM1_CLK]		= FUNC4("pwm1_clk", IMX_SC_R_PWM_1, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_PWM2_CLK]		= FUNC4("pwm2_clk", IMX_SC_R_PWM_2, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_PWM3_CLK]		= FUNC4("pwm3_clk", IMX_SC_R_PWM_3, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_PWM4_CLK]		= FUNC4("pwm4_clk", IMX_SC_R_PWM_4, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_PWM5_CLK]		= FUNC4("pwm5_clk", IMX_SC_R_PWM_5, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_PWM6_CLK]		= FUNC4("pwm6_clk", IMX_SC_R_PWM_6, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_PWM7_CLK]		= FUNC4("pwm7_clk", IMX_SC_R_PWM_7, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_GPT0_CLK]		= FUNC4("gpt0_clk", IMX_SC_R_GPT_0, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_GPT1_CLK]		= FUNC4("gpt1_clk", IMX_SC_R_GPT_1, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_GPT2_CLK]		= FUNC4("gpt2_clk", IMX_SC_R_GPT_2, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_GPT3_CLK]		= FUNC4("gpt3_clk", IMX_SC_R_GPT_3, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_GPT4_CLK]		= FUNC4("gpt4_clk", IMX_SC_R_GPT_4, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_FSPI0_CLK]	= FUNC4("fspi0_clk", IMX_SC_R_FSPI_0, IMX_SC_PM_CLK_PER);
	clks[IMX_LSIO_FSPI1_CLK]	= FUNC4("fspi1_clk", IMX_SC_R_FSPI_1, IMX_SC_PM_CLK_PER);

	/* ADMA SS */
	clks[IMX_ADMA_UART0_CLK]	= FUNC4("uart0_clk", IMX_SC_R_UART_0, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_UART1_CLK]	= FUNC4("uart1_clk", IMX_SC_R_UART_1, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_UART2_CLK]	= FUNC4("uart2_clk", IMX_SC_R_UART_2, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_UART3_CLK]	= FUNC4("uart3_clk", IMX_SC_R_UART_3, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_SPI0_CLK]		= FUNC4("spi0_clk",  IMX_SC_R_SPI_0, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_SPI1_CLK]		= FUNC4("spi1_clk",  IMX_SC_R_SPI_1, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_SPI2_CLK]		= FUNC4("spi2_clk",  IMX_SC_R_SPI_2, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_SPI3_CLK]		= FUNC4("spi3_clk",  IMX_SC_R_SPI_3, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_CAN0_CLK]		= FUNC4("can0_clk",  IMX_SC_R_CAN_0, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_I2C0_CLK]		= FUNC4("i2c0_clk",  IMX_SC_R_I2C_0, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_I2C1_CLK]		= FUNC4("i2c1_clk",  IMX_SC_R_I2C_1, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_I2C2_CLK]		= FUNC4("i2c2_clk",  IMX_SC_R_I2C_2, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_I2C3_CLK]		= FUNC4("i2c3_clk",  IMX_SC_R_I2C_3, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_FTM0_CLK]		= FUNC4("ftm0_clk",  IMX_SC_R_FTM_0, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_FTM1_CLK]		= FUNC4("ftm1_clk",  IMX_SC_R_FTM_1, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_ADC0_CLK]		= FUNC4("adc0_clk",  IMX_SC_R_ADC_0, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_PWM_CLK]		= FUNC4("pwm_clk",   IMX_SC_R_LCD_0_PWM_0, IMX_SC_PM_CLK_PER);
	clks[IMX_ADMA_LCD_CLK]		= FUNC4("lcd_clk",   IMX_SC_R_LCD_0, IMX_SC_PM_CLK_PER);

	/* Connectivity */
	clks[IMX_CONN_SDHC0_CLK]	= FUNC4("sdhc0_clk", IMX_SC_R_SDHC_0, IMX_SC_PM_CLK_PER);
	clks[IMX_CONN_SDHC1_CLK]	= FUNC4("sdhc1_clk", IMX_SC_R_SDHC_1, IMX_SC_PM_CLK_PER);
	clks[IMX_CONN_SDHC2_CLK]	= FUNC4("sdhc2_clk", IMX_SC_R_SDHC_2, IMX_SC_PM_CLK_PER);
	clks[IMX_CONN_ENET0_ROOT_CLK]	= FUNC4("enet0_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER);
	clks[IMX_CONN_ENET0_BYPASS_CLK]	= FUNC4("enet0_bypass_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_BYPASS);
	clks[IMX_CONN_ENET0_RGMII_CLK]	= FUNC4("enet0_rgmii_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0);
	clks[IMX_CONN_ENET1_ROOT_CLK]	= FUNC4("enet1_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_PER);
	clks[IMX_CONN_ENET1_BYPASS_CLK]	= FUNC4("enet1_bypass_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_BYPASS);
	clks[IMX_CONN_ENET1_RGMII_CLK]	= FUNC4("enet1_rgmii_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_MISC0);
	clks[IMX_CONN_GPMI_BCH_IO_CLK]	= FUNC4("gpmi_io_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_MST_BUS);
	clks[IMX_CONN_GPMI_BCH_CLK]	= FUNC4("gpmi_bch_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_PER);
	clks[IMX_CONN_USB2_ACLK]	= FUNC4("usb3_aclk_div", IMX_SC_R_USB_2, IMX_SC_PM_CLK_PER);
	clks[IMX_CONN_USB2_BUS_CLK]	= FUNC4("usb3_bus_div", IMX_SC_R_USB_2, IMX_SC_PM_CLK_MST_BUS);
	clks[IMX_CONN_USB2_LPM_CLK]	= FUNC4("usb3_lpm_div", IMX_SC_R_USB_2, IMX_SC_PM_CLK_MISC);

	/* Display controller SS */
	clks[IMX_DC0_DISP0_CLK]		= FUNC4("dc0_disp0_clk", IMX_SC_R_DC_0, IMX_SC_PM_CLK_MISC0);
	clks[IMX_DC0_DISP1_CLK]		= FUNC4("dc0_disp1_clk", IMX_SC_R_DC_0, IMX_SC_PM_CLK_MISC1);

	/* MIPI-LVDS SS */
	clks[IMX_MIPI0_I2C0_CLK]	= FUNC4("mipi0_i2c0_clk", IMX_SC_R_MIPI_0_I2C_0, IMX_SC_PM_CLK_MISC2);
	clks[IMX_MIPI0_I2C1_CLK]	= FUNC4("mipi0_i2c1_clk", IMX_SC_R_MIPI_0_I2C_1, IMX_SC_PM_CLK_MISC2);

	/* MIPI CSI SS */
	clks[IMX_CSI0_CORE_CLK]		= FUNC4("mipi_csi0_core_clk", IMX_SC_R_CSI_0, IMX_SC_PM_CLK_PER);
	clks[IMX_CSI0_ESC_CLK]		= FUNC4("mipi_csi0_esc_clk",  IMX_SC_R_CSI_0, IMX_SC_PM_CLK_MISC);
	clks[IMX_CSI0_I2C0_CLK]		= FUNC4("mipi_csi0_i2c0_clk", IMX_SC_R_CSI_0_I2C_0, IMX_SC_PM_CLK_PER);
	clks[IMX_CSI0_PWM0_CLK]		= FUNC4("mipi_csi0_pwm0_clk", IMX_SC_R_CSI_0_PWM_0, IMX_SC_PM_CLK_PER);

	/* GPU SS */
	clks[IMX_GPU0_CORE_CLK]		= FUNC4("gpu_core0_clk",	 IMX_SC_R_GPU_0_PID0, IMX_SC_PM_CLK_PER);
	clks[IMX_GPU0_SHADER_CLK]	= FUNC4("gpu_shader0_clk", IMX_SC_R_GPU_0_PID0, IMX_SC_PM_CLK_MISC);

	for (i = 0; i < clk_data->num; i++) {
		if (FUNC0(clks[i]))
			FUNC7("i.MX clk %u: register failed with %ld\n",
				i, FUNC1(clks[i]));
	}

	return FUNC6(ccm_node, of_clk_hw_onecell_get, clk_data);
}