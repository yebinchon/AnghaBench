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
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  topology_poll ; 
 int /*<<< orphan*/  topology_timer ; 

__attribute__((used)) static void FUNC2(void)
{
	if (FUNC0(&topology_poll, -1, 0))
		FUNC1(&topology_timer, jiffies + HZ / 10);
	else
		FUNC1(&topology_timer, jiffies + HZ * 60);
}