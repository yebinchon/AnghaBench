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
typedef  scalar_t__ u32 ;
struct parents_resp {int /*<<< orphan*/  parents; } ;
struct clock_parent {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int END_OF_PARENTS ; 
 scalar_t__ MAX_PARENT ; 
 int FUNC1 (struct clock_parent*,struct parents_resp*,scalar_t__*) ; 
 TYPE_1__* clock ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct parents_resp*) ; 

__attribute__((used)) static int FUNC3(u32 clk_id, struct clock_parent *parents,
				    u32 *num_parents)
{
	int j = 0, ret;
	struct parents_resp response = { };

	*num_parents = 0;
	do {
		/* Get parents from firmware */
		ret = FUNC2(clock[clk_id].clk_id, j,
						  &response);
		if (ret)
			return ret;

		ret = FUNC1(&parents[j], &response,
						 num_parents);
		if (ret == END_OF_PARENTS)
			return 0;
		j += FUNC0(response.parents);
	} while (*num_parents <= MAX_PARENT);

	return 0;
}