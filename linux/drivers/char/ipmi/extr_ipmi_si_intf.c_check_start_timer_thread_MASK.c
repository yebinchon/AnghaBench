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
struct smi_info {scalar_t__ si_state; scalar_t__ thread; int /*<<< orphan*/ * curr_msg; } ;

/* Variables and functions */
 scalar_t__ SI_NORMAL ; 
 scalar_t__ SI_TIMEOUT_JIFFIES ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct smi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smi_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct smi_info *smi_info)
{
	if (smi_info->si_state == SI_NORMAL && smi_info->curr_msg == NULL) {
		FUNC1(smi_info, jiffies + SI_TIMEOUT_JIFFIES);

		if (smi_info->thread)
			FUNC3(smi_info->thread);

		FUNC2(smi_info);
		FUNC0(smi_info, 0);
	}
}