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
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tpm_chip* FUNC1 () ; 
 int FUNC2 (struct tpm_chip*) ; 

struct tpm_chip *FUNC3(struct tpm_chip *chip)
{
	int rc;

	if (chip) {
		if (!FUNC2(chip))
			return chip;
		return NULL;
	}

	chip = FUNC1();
	if (!chip)
		return NULL;
	rc = FUNC2(chip);
	/* release additional reference we got from tpm_default_chip() */
	FUNC0(&chip->dev);
	if (rc)
		return NULL;
	return chip;
}