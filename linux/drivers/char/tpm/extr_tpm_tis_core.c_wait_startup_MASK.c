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
struct tpm_tis_data {int dummy; } ;
struct tpm_chip {unsigned long timeout_a; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TPM_ACCESS_VALID ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 struct tpm_tis_data* FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tpm_tis_data*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip, int l)
{
	struct tpm_tis_data *priv = FUNC1(&chip->dev);
	unsigned long stop = jiffies + chip->timeout_a;

	do {
		int rc;
		u8 access;

		rc = FUNC4(priv, FUNC0(l), &access);
		if (rc < 0)
			return rc;

		if (access & TPM_ACCESS_VALID)
			return 0;
		FUNC3(TPM_TIMEOUT);
	} while (FUNC2(jiffies, stop));
	return -1;
}