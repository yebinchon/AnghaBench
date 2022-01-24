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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opal_prd_msg_queue ; 
 int /*<<< orphan*/  opal_prd_msg_queue_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(void)
{
	unsigned long flags;
	bool ret;

	FUNC1(&opal_prd_msg_queue_lock, flags);
	ret = FUNC0(&opal_prd_msg_queue);
	FUNC2(&opal_prd_msg_queue_lock, flags);

	return ret;
}