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
struct tpm_nsc_priv {scalar_t__ base; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 scalar_t__ NSC_STATUS ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 struct tpm_nsc_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip, u8 mask, u8 val, u8 * data)
{
	struct tpm_nsc_priv *priv = FUNC0(&chip->dev);
	unsigned long stop;

	/* status immediately available check */
	*data = FUNC1(priv->base + NSC_STATUS);
	if ((*data & mask) == val)
		return 0;

	/* wait for status */
	stop = jiffies + 10 * HZ;
	do {
		FUNC2(TPM_TIMEOUT);
		*data = FUNC1(priv->base + 1);
		if ((*data & mask) == val)
			return 0;
	}
	while (FUNC3(jiffies, stop));

	return -EBUSY;
}