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
typedef  int u32 ;
struct tpm_tis_data {int /*<<< orphan*/  locality; } ;
struct tpm_chip {int flags; unsigned long timeout_a; unsigned long timeout_d; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPM_TIMEOUT_USECS_MAX ; 
 int /*<<< orphan*/  TPM_TIMEOUT_USECS_MIN ; 
 struct tpm_tis_data* FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (struct tpm_tis_data*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip)
{
	struct tpm_tis_data *priv = FUNC1(&chip->dev);
	unsigned long stop;
	int burstcnt, rc;
	u32 value;

	/* wait for burstcount */
	if (chip->flags & TPM_CHIP_FLAG_TPM2)
		stop = jiffies + chip->timeout_a;
	else
		stop = jiffies + chip->timeout_d;
	do {
		rc = FUNC3(priv, FUNC0(priv->locality), &value);
		if (rc < 0)
			return rc;

		burstcnt = (value >> 8) & 0xFFFF;
		if (burstcnt)
			return burstcnt;
		FUNC4(TPM_TIMEOUT_USECS_MIN, TPM_TIMEOUT_USECS_MAX);
	} while (FUNC2(jiffies, stop));
	return -EBUSY;
}