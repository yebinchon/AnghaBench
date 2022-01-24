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
struct smi_info {int /*<<< orphan*/  si_sm; TYPE_1__* handlers; scalar_t__ thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* start_transaction ) (int /*<<< orphan*/ ,unsigned char*,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ SI_TIMEOUT_JIFFIES ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct smi_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct smi_info *smi_info, unsigned char *msg,
			  unsigned int size)
{
	FUNC0(smi_info, jiffies + SI_TIMEOUT_JIFFIES);

	if (smi_info->thread)
		FUNC2(smi_info->thread);

	smi_info->handlers->start_transaction(smi_info->si_sm, msg, size);
}