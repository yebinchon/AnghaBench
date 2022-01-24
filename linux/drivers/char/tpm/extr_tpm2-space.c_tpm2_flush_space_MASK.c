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
struct tpm_space {int /*<<< orphan*/ * context_tbl; } ;
struct tpm_chip {struct tpm_space work_space; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_chip*,struct tpm_space*) ; 

void FUNC3(struct tpm_chip *chip)
{
	struct tpm_space *space = &chip->work_space;
	int i;

	for (i = 0; i < FUNC0(space->context_tbl); i++)
		if (space->context_tbl[i] && ~space->context_tbl[i])
			FUNC1(chip, space->context_tbl[i]);

	FUNC2(chip, space);
}