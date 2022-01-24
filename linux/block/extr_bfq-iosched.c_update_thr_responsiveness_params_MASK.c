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
struct bfq_data {scalar_t__ bfq_user_max_budget; int /*<<< orphan*/  bfq_max_budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_data*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bfq_data *bfqd)
{
	if (bfqd->bfq_user_max_budget == 0) {
		bfqd->bfq_max_budget =
			FUNC0(bfqd);
		FUNC1(bfqd, "new max_budget = %d", bfqd->bfq_max_budget);
	}
}