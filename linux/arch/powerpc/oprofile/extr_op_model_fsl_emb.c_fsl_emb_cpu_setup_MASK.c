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
struct op_counter_config {int /*<<< orphan*/  kernel; int /*<<< orphan*/  user; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int num_counters ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct op_counter_config *ctr)
{
	int i;

	/* freeze all counters */
	FUNC1();

	for (i = 0;i < num_counters;i++) {
		FUNC0(i);

		FUNC2(i, ctr[i].event);

		FUNC3(i, ctr[i].user, ctr[i].kernel);
	}

	return 0;
}