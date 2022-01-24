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
typedef  int /*<<< orphan*/  u32 ;
struct tpm_tis_data {int clkrun_enabled; scalar_t__ ilb_base_addr; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_X86 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC_CLKRUN_EN ; 
 scalar_t__ LPC_CNTRL_OFFSET ; 
 struct tpm_tis_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct tpm_chip *chip, bool value)
{
	struct tpm_tis_data *data = FUNC1(&chip->dev);
	u32 clkrun_val;

	if (!FUNC0(CONFIG_X86) || !FUNC4() ||
	    !data->ilb_base_addr)
		return;

	if (value) {
		data->clkrun_enabled++;
		if (data->clkrun_enabled > 1)
			return;
		clkrun_val = FUNC2(data->ilb_base_addr + LPC_CNTRL_OFFSET);

		/* Disable LPC CLKRUN# */
		clkrun_val &= ~LPC_CLKRUN_EN;
		FUNC3(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);

		/*
		 * Write any random value on port 0x80 which is on LPC, to make
		 * sure LPC clock is running before sending any TPM command.
		 */
		FUNC5(0xCC, 0x80);
	} else {
		data->clkrun_enabled--;
		if (data->clkrun_enabled)
			return;

		clkrun_val = FUNC2(data->ilb_base_addr + LPC_CNTRL_OFFSET);

		/* Enable LPC CLKRUN# */
		clkrun_val |= LPC_CLKRUN_EN;
		FUNC3(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);

		/*
		 * Write any random value on port 0x80 which is on LPC, to make
		 * sure LPC clock is running before sending any TPM command.
		 */
		FUNC5(0xCC, 0x80);
	}
}