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
typedef  int u8 ;
struct tpm_chip {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  TPM_TIMEOUT_US_HI ; 
 int /*<<< orphan*/  TPM_TIMEOUT_US_LOW ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tpm_chip *chip, u8 mask, unsigned long timeout,
			 int *status)
{
	unsigned long stop;

	/* check current status */
	*status = FUNC1(chip);
	if ((*status != 0xFF) && (*status & mask) == mask)
		return 0;

	stop = jiffies + timeout;
	do {
		/* since we just checked the status, give the TPM some time */
		FUNC2(TPM_TIMEOUT_US_LOW, TPM_TIMEOUT_US_HI);
		*status = FUNC1(chip);
		if ((*status & mask) == mask)
			return 0;

	} while (FUNC0(jiffies, stop));

	return -ETIME;
}