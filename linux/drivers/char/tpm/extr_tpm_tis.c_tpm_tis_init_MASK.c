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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct tpm_tis_tcg_phy {TYPE_1__ priv; int /*<<< orphan*/  iobase; } ;
struct tpm_info {int irq; int /*<<< orphan*/  res; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPM_TIS_ITPM_WORKAROUND ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct tpm_tis_tcg_phy* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ interrupts ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ itpm ; 
 int /*<<< orphan*/  tpm_tcg ; 
 int FUNC8 (struct device*,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct tpm_info *tpm_info)
{
	struct tpm_tis_tcg_phy *phy;
	int irq = -1;
	int rc;

	rc = FUNC4(dev);
	if (rc)
		return rc;

	phy = FUNC6(dev, sizeof(struct tpm_tis_tcg_phy), GFP_KERNEL);
	if (phy == NULL)
		return -ENOMEM;

	phy->iobase = FUNC5(dev, &tpm_info->res);
	if (FUNC2(phy->iobase))
		return FUNC3(phy->iobase);

	if (interrupts)
		irq = tpm_info->irq;

	if (itpm || FUNC7(FUNC0(dev)))
		phy->priv.flags |= TPM_TIS_ITPM_WORKAROUND;

	return FUNC8(dev, &phy->priv, irq, &tpm_tcg,
				 FUNC1(dev));
}