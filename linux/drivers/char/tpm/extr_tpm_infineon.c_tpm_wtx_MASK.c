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
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TPM_CTRL_WTX ; 
 int /*<<< orphan*/  TPM_MAX_WTX_PACKAGES ; 
 int TPM_VL_VER ; 
 int /*<<< orphan*/  TPM_WTX_MSLEEP_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  number_of_wtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*,int) ; 

__attribute__((used)) static void FUNC3(struct tpm_chip *chip)
{
	number_of_wtx++;
	FUNC0(&chip->dev, "Granting WTX (%02d / %02d)\n",
		 number_of_wtx, TPM_MAX_WTX_PACKAGES);
	FUNC2(chip, TPM_VL_VER);
	FUNC2(chip, TPM_CTRL_WTX);
	FUNC2(chip, 0x00);
	FUNC2(chip, 0x00);
	FUNC1(TPM_WTX_MSLEEP_TIME);
}