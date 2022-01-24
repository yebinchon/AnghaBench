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
 int /*<<< orphan*/  dev_nums_idr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tpm_chip* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct tpm_chip *FUNC4(void)
{
	struct tpm_chip *chip, *res = NULL;
	int chip_num = 0;
	int chip_prev;

	FUNC2(&idr_lock);

	do {
		chip_prev = chip_num;
		chip = FUNC1(&dev_nums_idr, &chip_num);
		if (chip) {
			FUNC0(&chip->dev);
			res = chip;
			break;
		}
	} while (chip_prev != chip_num);

	FUNC3(&idr_lock);

	return res;
}