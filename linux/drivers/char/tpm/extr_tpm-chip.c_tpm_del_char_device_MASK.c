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
struct tpm_chip {int flags; int /*<<< orphan*/  ops_sem; int /*<<< orphan*/ * ops; int /*<<< orphan*/  dev_num; int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM2_SU_CLEAR ; 
 int TPM_CHIP_FLAG_TPM2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_nums_idr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct tpm_chip *chip)
{
	FUNC0(&chip->cdev, &chip->dev);

	/* Make the chip unavailable. */
	FUNC3(&idr_lock);
	FUNC2(&dev_nums_idr, NULL, chip->dev_num);
	FUNC4(&idr_lock);

	/* Make the driver uncallable. */
	FUNC1(&chip->ops_sem);
	if (chip->flags & TPM_CHIP_FLAG_TPM2) {
		if (!FUNC6(chip)) {
			FUNC5(chip, TPM2_SU_CLEAR);
			FUNC7(chip);
		}
	}
	chip->ops = NULL;
	FUNC8(&chip->ops_sem);
}