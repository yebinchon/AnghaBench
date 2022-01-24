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
struct tpm_private {struct tpm_chip* chip; int /*<<< orphan*/  read_queue; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tpm_chip*) ; 
 int FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tpm_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpm_vtpm ; 
 struct tpm_chip* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct tpm_private *priv)
{
	struct tpm_chip *chip;

	chip = FUNC4(dev, &tpm_vtpm);
	if (FUNC0(chip))
		return FUNC1(chip);

	FUNC3(&priv->read_queue);

	priv->chip = chip;
	FUNC2(&chip->dev, priv);

	return 0;
}