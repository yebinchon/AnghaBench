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
typedef  int u32 ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb, unsigned long event, void *data)
{
	u32 key = *(u32 *)data;

	if (event != 0x1000)
		return 0;

	if (key == KEY_POWER)
		FUNC1(false);
	else if (key == 0xffff)
		FUNC0();

	return 0;
}