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
struct string_list {int nr; TYPE_1__* items; } ;
struct rerere_id {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_2__ {struct rerere_id* util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 int /*<<< orphan*/  FUNC1 (struct rerere_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct rerere_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct repository*,struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rerere_id*) ; 
 int /*<<< orphan*/  write_lock ; 

void FUNC8(struct repository *r, struct string_list *merge_rr)
{
	int i;

	if (FUNC5(r, merge_rr, 0) < 0)
		return;

	for (i = 0; i < merge_rr->nr; i++) {
		struct rerere_id *id = merge_rr->items[i].util;
		if (!FUNC1(id)) {
			FUNC7(id);
			FUNC3(FUNC2(id, NULL));
		}
	}
	FUNC6(FUNC0(r));
	FUNC4(&write_lock);
}