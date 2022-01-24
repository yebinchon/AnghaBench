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
struct smi_info {int /*<<< orphan*/  si_lock; int /*<<< orphan*/  need_watch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *send_info, unsigned int watch_mask)
{
	struct smi_info *smi_info = send_info;
	unsigned long flags;
	int enable;

	enable = !!watch_mask;

	FUNC0(&smi_info->need_watch, enable);
	FUNC2(&smi_info->si_lock, flags);
	FUNC1(smi_info);
	FUNC3(&smi_info->si_lock, flags);
}