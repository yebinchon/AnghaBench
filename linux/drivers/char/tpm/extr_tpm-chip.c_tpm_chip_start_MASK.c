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
struct tpm_chip {int locality; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*) ; 
 int FUNC2 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 int FUNC4 (struct tpm_chip*) ; 

int FUNC5(struct tpm_chip *chip)
{
	int ret;

	FUNC1(chip);

	if (chip->locality == -1) {
		ret = FUNC4(chip);
		if (ret) {
			FUNC0(chip);
			return ret;
		}
	}

	ret = FUNC2(chip);
	if (ret) {
		FUNC3(chip);
		FUNC0(chip);
		return ret;
	}

	return 0;
}