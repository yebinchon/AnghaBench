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
struct blkcg_gq {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  stat_bytes; int /*<<< orphan*/  stat_ios; scalar_t__* pd; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pd_free_fn ) (scalar_t__) ;} ;

/* Variables and functions */
 int BLKCG_MAX_POLS ; 
 TYPE_1__** blkcg_policy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct blkcg_gq *blkg)
{
	int i;

	if (!blkg)
		return;

	for (i = 0; i < BLKCG_MAX_POLS; i++)
		if (blkg->pd[i])
			blkcg_policy[i]->pd_free_fn(blkg->pd[i]);

	FUNC0(&blkg->stat_ios);
	FUNC0(&blkg->stat_bytes);
	FUNC2(&blkg->refcnt);
	FUNC1(blkg);
}