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
typedef  int /*<<< orphan*/  u8 ;
struct tpm_chip {unsigned long timeout_a; int /*<<< orphan*/  dev; } ;
struct st33zp24_dev {int locality; int /*<<< orphan*/  phy_id; TYPE_1__* ops; } ;
struct TYPE_2__ {long (* send ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  TPM_ACCESS ; 
 int /*<<< orphan*/  TPM_ACCESS_REQUEST_USE ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 scalar_t__ FUNC0 (struct tpm_chip*) ; 
 struct st33zp24_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip)
{
	struct st33zp24_dev *tpm_dev = FUNC1(&chip->dev);
	unsigned long stop;
	long ret;
	u8 data;

	if (FUNC0(chip))
		return tpm_dev->locality;

	data = TPM_ACCESS_REQUEST_USE;
	ret = tpm_dev->ops->send(tpm_dev->phy_id, TPM_ACCESS, &data, 1);
	if (ret < 0)
		return ret;

	stop = jiffies + chip->timeout_a;

	/* Request locality is usually effective after the request */
	do {
		if (FUNC0(chip))
			return tpm_dev->locality;
		FUNC2(TPM_TIMEOUT);
	} while (FUNC4(jiffies, stop));

	/* could not get locality */
	return -EACCES;
}