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
typedef  size_t u8 ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int EIO ; 
 int /*<<< orphan*/  RESET_LP_IRQC_DISABLE ; 
 int /*<<< orphan*/  STAT_XFE ; 
 size_t TPM_CTRL_DATA ; 
 size_t TPM_VL_CHANNEL_TPM ; 
 size_t TPM_VL_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct tpm_chip*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_chip*,size_t) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip, u8 * buf, size_t count)
{
	int i;
	int ret;
	u8 count_high, count_low, count_4, count_3, count_2, count_1;

	/* Disabling Reset, LP and IRQC */
	FUNC2(RESET_LP_IRQC_DISABLE, CMD);

	ret = FUNC1(chip, 1);
	if (ret) {
		FUNC0(&chip->dev, "Timeout while clearing FIFO\n");
		return -EIO;
	}

	ret = FUNC3(chip, STAT_XFE);
	if (ret)
		return -EIO;

	count_4 = (count & 0xff000000) >> 24;
	count_3 = (count & 0x00ff0000) >> 16;
	count_2 = (count & 0x0000ff00) >> 8;
	count_1 = (count & 0x000000ff);
	count_high = ((count + 6) & 0xffffff00) >> 8;
	count_low = ((count + 6) & 0x000000ff);

	/* Sending Header */
	FUNC4(chip, TPM_VL_VER);
	FUNC4(chip, TPM_CTRL_DATA);
	FUNC4(chip, count_high);
	FUNC4(chip, count_low);

	/* Sending Data Header */
	FUNC4(chip, TPM_VL_VER);
	FUNC4(chip, TPM_VL_CHANNEL_TPM);
	FUNC4(chip, count_4);
	FUNC4(chip, count_3);
	FUNC4(chip, count_2);
	FUNC4(chip, count_1);

	/* Sending Data */
	for (i = 0; i < count; i++) {
		FUNC4(chip, buf[i]);
	}
	return 0;
}