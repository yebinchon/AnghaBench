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
struct sched_shutdown {int reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sched_shutdown*) ; 
 int /*<<< orphan*/  SCHEDOP_shutdown ; 

void FUNC2(int reason)
{
	struct sched_shutdown r = { .reason = reason };
	int rc;

	rc = FUNC1(SCHEDOP_shutdown, &r);
	FUNC0(rc);
}