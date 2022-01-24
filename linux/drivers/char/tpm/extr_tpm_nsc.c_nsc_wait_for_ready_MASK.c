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
struct tpm_nsc_priv {scalar_t__ base; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ NSC_DATA ; 
 scalar_t__ NSC_STATUS ; 
 int NSC_STATUS_OBF ; 
 int NSC_STATUS_RDY ; 
 int /*<<< orphan*/  TPM_TIMEOUT ; 
 struct tpm_nsc_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tpm_chip *chip)
{
	struct tpm_nsc_priv *priv = FUNC0(&chip->dev);
	int status;
	unsigned long stop;

	/* status immediately available check */
	status = FUNC2(priv->base + NSC_STATUS);
	if (status & NSC_STATUS_OBF)
		status = FUNC2(priv->base + NSC_DATA);
	if (status & NSC_STATUS_RDY)
		return 0;

	/* wait for status */
	stop = jiffies + 100;
	do {
		FUNC3(TPM_TIMEOUT);
		status = FUNC2(priv->base + NSC_STATUS);
		if (status & NSC_STATUS_OBF)
			status = FUNC2(priv->base + NSC_DATA);
		if (status & NSC_STATUS_RDY)
			return 0;
	}
	while (FUNC4(jiffies, stop));

	FUNC1(&chip->dev, "wait for ready failed\n");
	return -EBUSY;
}