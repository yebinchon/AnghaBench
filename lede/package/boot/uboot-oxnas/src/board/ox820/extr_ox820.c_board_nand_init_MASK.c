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
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct nand_chip {int chip_delay; int /*<<< orphan*/  read_buf; int /*<<< orphan*/  dev_ready; TYPE_1__ ecc; int /*<<< orphan*/  cmd_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_ECC_SOFT ; 
 int /*<<< orphan*/  PINMUX_BANK_MFA ; 
 int /*<<< orphan*/  PINMUX_STATIC_ADDR18 ; 
 int /*<<< orphan*/  PINMUX_STATIC_ADDR19 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA0 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA1 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA2 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA3 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA4 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA5 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA6 ; 
 int /*<<< orphan*/  PINMUX_STATIC_DATA7 ; 
 int /*<<< orphan*/  PINMUX_STATIC_NCS ; 
 int /*<<< orphan*/  PINMUX_STATIC_NOE ; 
 int /*<<< orphan*/  PINMUX_STATIC_NWE ; 
 int STATIC_BUS_WIDTH16 ; 
 int /*<<< orphan*/  STATIC_CTL_BANK0 ; 
 int STATIC_READ_CYCLE_SHIFT ; 
 int STATIC_TURN_AROUND_SHIFT ; 
 int STATIC_WRITE_CYCLE_SHIFT ; 
 int STATIC_WRITE_PULSE_SHIFT ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_STATIC ; 
 int /*<<< orphan*/  SYS_CTRL_RST_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nand_dev_ready ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  nand_hwcontrol ; 
 int /*<<< orphan*/  nand_read_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct nand_chip *chip)
{
	/* Block reset Static core */
	FUNC3(SYS_CTRL_RST_STATIC, 1);
	FUNC3(SYS_CTRL_RST_STATIC, 0);

	/* Enable clock to Static core */
	FUNC0(SYS_CTRL_CLK_STATIC);

	/* enable flash support on static bus.
	 * Enable static bus onto GPIOs, only CS0 */
	FUNC2(PINMUX_BANK_MFA, 12, PINMUX_STATIC_DATA0);
	FUNC2(PINMUX_BANK_MFA, 13, PINMUX_STATIC_DATA1);
	FUNC2(PINMUX_BANK_MFA, 14, PINMUX_STATIC_DATA2);
	FUNC2(PINMUX_BANK_MFA, 15, PINMUX_STATIC_DATA3);
	FUNC2(PINMUX_BANK_MFA, 16, PINMUX_STATIC_DATA4);
	FUNC2(PINMUX_BANK_MFA, 17, PINMUX_STATIC_DATA5);
	FUNC2(PINMUX_BANK_MFA, 18, PINMUX_STATIC_DATA6);
	FUNC2(PINMUX_BANK_MFA, 19, PINMUX_STATIC_DATA7);

	FUNC2(PINMUX_BANK_MFA, 20, PINMUX_STATIC_NWE);
	FUNC2(PINMUX_BANK_MFA, 21, PINMUX_STATIC_NOE);
	FUNC2(PINMUX_BANK_MFA, 22, PINMUX_STATIC_NCS);
	FUNC2(PINMUX_BANK_MFA, 23, PINMUX_STATIC_ADDR18);
	FUNC2(PINMUX_BANK_MFA, 24, PINMUX_STATIC_ADDR19);

	/* Setup the static bus CS0 to access FLASH */

	FUNC4((0x3f << STATIC_READ_CYCLE_SHIFT)
			| (0x3f << STATIC_WRITE_CYCLE_SHIFT)
			| (0x1f << STATIC_WRITE_PULSE_SHIFT)
			| (0x03 << STATIC_TURN_AROUND_SHIFT) |
			STATIC_BUS_WIDTH16,
		STATIC_CTL_BANK0);

	chip->cmd_ctrl = nand_hwcontrol;
	chip->ecc.mode = NAND_ECC_SOFT;
	chip->chip_delay = 30;
	chip->dev_ready = nand_dev_ready;
	chip->read_buf = nand_read_buf;

	FUNC1(chip);

	return 0;
}