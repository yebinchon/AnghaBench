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
struct tpm_chip {int flags; scalar_t__ groups_cnt; int /*<<< orphan*/ ** groups; } ;

/* Variables and functions */
 int TPM_CHIP_FLAG_TPM2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  tpm_dev_group ; 

void FUNC1(struct tpm_chip *chip)
{
	if (chip->flags & TPM_CHIP_FLAG_TPM2)
		return;

	FUNC0(chip->groups_cnt != 0);
	chip->groups[chip->groups_cnt++] = &tpm_dev_group;
}