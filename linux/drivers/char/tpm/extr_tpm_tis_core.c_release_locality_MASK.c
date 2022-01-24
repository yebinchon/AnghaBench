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
struct tpm_tis_data {int /*<<< orphan*/  int_queue; } ;
struct tpm_chip {unsigned long timeout_a; int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 long ERESTARTSYS ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TPM_ACCESS_ACTIVE_LOCALITY ; 
 int TPM_CHIP_FLAG_IRQ ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct tpm_tis_data* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC4 (struct tpm_chip*,int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_tis_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct tpm_chip *chip, int l)
{
	struct tpm_tis_data *priv = FUNC2(&chip->dev);
	unsigned long stop, timeout;
	long rc;

	FUNC7(priv, FUNC0(l), TPM_ACCESS_ACTIVE_LOCALITY);

	stop = jiffies + chip->timeout_a;

	if (chip->flags & TPM_CHIP_FLAG_IRQ) {
again:
		timeout = stop - jiffies;
		if ((long)timeout <= 0)
			return -1;

		rc = FUNC8(priv->int_queue,
						      (FUNC4(chip, l)),
						      timeout);

		if (rc > 0)
			return 0;

		if (rc == -ERESTARTSYS && FUNC3(current)) {
			FUNC1(TIF_SIGPENDING);
			goto again;
		}
	} else {
		do {
			if (FUNC4(chip, l))
				return 0;
			FUNC6(TPM_TIMEOUT);
		} while (FUNC5(jiffies, stop));
	}
	return -1;
}