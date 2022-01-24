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
struct tpm_class_ops {int dummy; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tpm_chip* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct tpm_chip*) ; 
 int FUNC3 (struct device*,void (*) (void*),int /*<<< orphan*/ *) ; 
 scalar_t__ put_device ; 
 struct tpm_chip* FUNC4 (struct device*,struct tpm_class_ops const*) ; 

struct tpm_chip *FUNC5(struct device *pdev,
				 const struct tpm_class_ops *ops)
{
	struct tpm_chip *chip;
	int rc;

	chip = FUNC4(pdev, ops);
	if (FUNC1(chip))
		return chip;

	rc = FUNC3(pdev,
				      (void (*)(void *)) put_device,
				      &chip->dev);
	if (rc)
		return FUNC0(rc);

	FUNC2(pdev, chip);

	return chip;
}