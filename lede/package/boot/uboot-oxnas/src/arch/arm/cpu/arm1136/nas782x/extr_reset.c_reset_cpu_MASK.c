#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PINMUX_ALTERNATIVE_SEL ; 
 scalar_t__ PINMUX_DEBUG_SEL ; 
 scalar_t__ PINMUX_PULLUP_SEL ; 
 scalar_t__ PINMUX_QUATERNARY_SEL ; 
 scalar_t__ PINMUX_SECONDARY_SEL ; 
 scalar_t__ PINMUX_TERTIARY_SEL ; 
 scalar_t__ SEC_CONTROL_BASE ; 
 scalar_t__ SYS_CONTROL_BASE ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_CIPHER ; 
 scalar_t__ SYS_CTRL_CLK_CLR_CTRL ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_COPRO ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_DMA ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_I2S ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_MAC ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_MACB ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_PCIEA ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_PCIEB ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_REF600 ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_SATA ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_SD ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_STATIC ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_USBDEV ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_USBHS ; 
 int /*<<< orphan*/  SYS_CTRL_RST_ARM0 ; 
 int /*<<< orphan*/  SYS_CTRL_RST_ARM1 ; 
 int /*<<< orphan*/  SYS_CTRL_RST_CIPHER ; 
 scalar_t__ SYS_CTRL_RST_CLR_CTRL ; 
 int /*<<< orphan*/  SYS_CTRL_RST_COPRO ; 
 int /*<<< orphan*/  SYS_CTRL_RST_GPIO ; 
 int /*<<< orphan*/  SYS_CTRL_RST_I2S ; 
 int /*<<< orphan*/  SYS_CTRL_RST_MACA ; 
 int /*<<< orphan*/  SYS_CTRL_RST_MACB ; 
 int /*<<< orphan*/  SYS_CTRL_RST_MISC ; 
 int /*<<< orphan*/  SYS_CTRL_RST_PCIEA ; 
 int /*<<< orphan*/  SYS_CTRL_RST_PCIEB ; 
 int /*<<< orphan*/  SYS_CTRL_RST_PCIEPHY ; 
 int /*<<< orphan*/  SYS_CTRL_RST_SATA ; 
 int /*<<< orphan*/  SYS_CTRL_RST_SATA_LINK ; 
 int /*<<< orphan*/  SYS_CTRL_RST_SATA_PHY ; 
 int /*<<< orphan*/  SYS_CTRL_RST_SCU ; 
 int /*<<< orphan*/  SYS_CTRL_RST_SD ; 
 scalar_t__ SYS_CTRL_RST_SET_CTRL ; 
 int /*<<< orphan*/  SYS_CTRL_RST_SGDMA ; 
 int /*<<< orphan*/  SYS_CTRL_RST_STATIC ; 
 int /*<<< orphan*/  SYS_CTRL_RST_UART1 ; 
 int /*<<< orphan*/  SYS_CTRL_RST_UART2 ; 
 int /*<<< orphan*/  SYS_CTRL_RST_USBDEV ; 
 int /*<<< orphan*/  SYS_CTRL_RST_USBHS ; 
 int /*<<< orphan*/  SYS_CTRL_RST_USBHSPHYA ; 
 int /*<<< orphan*/  SYS_CTRL_RST_USBHSPHYB ; 
 int /*<<< orphan*/  SYS_CTRL_RST_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(ulong addr)
{
	u32 value;

	// Assert reset to cores as per power on defaults
	// Don't touch the DDR interface as things will come to an impromptu stop
	// NB Possibly should be asserting reset for PLLB, but there are timing
	//    concerns here according to the docs

	value =
		FUNC0(SYS_CTRL_RST_COPRO     ) |
		FUNC0(SYS_CTRL_RST_USBHS     ) |
		FUNC0(SYS_CTRL_RST_USBHSPHYA ) |
		FUNC0(SYS_CTRL_RST_MACA      ) |
		FUNC0(SYS_CTRL_RST_PCIEA     ) |
		FUNC0(SYS_CTRL_RST_SGDMA     ) |
		FUNC0(SYS_CTRL_RST_CIPHER    ) |
		FUNC0(SYS_CTRL_RST_SATA      ) |
		FUNC0(SYS_CTRL_RST_SATA_LINK ) |
		FUNC0(SYS_CTRL_RST_SATA_PHY  ) |
		FUNC0(SYS_CTRL_RST_PCIEPHY   ) |
		FUNC0(SYS_CTRL_RST_STATIC    ) |
		FUNC0(SYS_CTRL_RST_UART1     ) |
		FUNC0(SYS_CTRL_RST_UART2     ) |
		FUNC0(SYS_CTRL_RST_MISC      ) |
		FUNC0(SYS_CTRL_RST_I2S       ) |
		FUNC0(SYS_CTRL_RST_SD        ) |
		FUNC0(SYS_CTRL_RST_MACB      ) |
		FUNC0(SYS_CTRL_RST_PCIEB     ) |
		FUNC0(SYS_CTRL_RST_VIDEO     ) |
		FUNC0(SYS_CTRL_RST_USBHSPHYB ) |
		FUNC0(SYS_CTRL_RST_USBDEV    );

	FUNC1(value, SYS_CTRL_RST_SET_CTRL);

	// Release reset to cores as per power on defaults
	FUNC1(FUNC0(SYS_CTRL_RST_GPIO), SYS_CTRL_RST_CLR_CTRL);

	// Disable clocks to cores as per power-on defaults - must leave DDR
	// related clocks enabled otherwise we'll stop rather abruptly.
	value =
		FUNC0(SYS_CTRL_CLK_COPRO) 	|
		FUNC0(SYS_CTRL_CLK_DMA)   	|
		FUNC0(SYS_CTRL_CLK_CIPHER)	|
		FUNC0(SYS_CTRL_CLK_SD)  		|
		FUNC0(SYS_CTRL_CLK_SATA)  	|
		FUNC0(SYS_CTRL_CLK_I2S)   	|
		FUNC0(SYS_CTRL_CLK_USBHS) 	|
		FUNC0(SYS_CTRL_CLK_MAC)   	|
		FUNC0(SYS_CTRL_CLK_PCIEA)   	|
		FUNC0(SYS_CTRL_CLK_STATIC)	|
		FUNC0(SYS_CTRL_CLK_MACB)		|
		FUNC0(SYS_CTRL_CLK_PCIEB)		|
		FUNC0(SYS_CTRL_CLK_REF600)	|
		FUNC0(SYS_CTRL_CLK_USBDEV);

	FUNC1(value, SYS_CTRL_CLK_CLR_CTRL);

	// Enable clocks to cores as per power-on defaults

	// Set sys-control pin mux'ing as per power-on defaults

	FUNC1(0, SYS_CONTROL_BASE + PINMUX_SECONDARY_SEL);
	FUNC1(0, SYS_CONTROL_BASE + PINMUX_TERTIARY_SEL);
	FUNC1(0, SYS_CONTROL_BASE + PINMUX_QUATERNARY_SEL);
	FUNC1(0, SYS_CONTROL_BASE + PINMUX_DEBUG_SEL);
	FUNC1(0, SYS_CONTROL_BASE + PINMUX_ALTERNATIVE_SEL);
	FUNC1(0, SYS_CONTROL_BASE + PINMUX_PULLUP_SEL);

	FUNC1(0, SEC_CONTROL_BASE + PINMUX_SECONDARY_SEL);
	FUNC1(0, SEC_CONTROL_BASE + PINMUX_TERTIARY_SEL);
	FUNC1(0, SEC_CONTROL_BASE + PINMUX_QUATERNARY_SEL);
	FUNC1(0, SEC_CONTROL_BASE + PINMUX_DEBUG_SEL);
	FUNC1(0, SEC_CONTROL_BASE + PINMUX_ALTERNATIVE_SEL);
	FUNC1(0, SEC_CONTROL_BASE + PINMUX_PULLUP_SEL);

	// No need to save any state, as the ROM loader can determine whether reset
	// is due to power cycling or programatic action, just hit the (self-
	// clearing) CPU reset bit of the block reset register
	value =
		FUNC0(SYS_CTRL_RST_SCU) |
		FUNC0(SYS_CTRL_RST_ARM0) |
		FUNC0(SYS_CTRL_RST_ARM1);

	FUNC1(value, SYS_CTRL_RST_SET_CTRL);
}