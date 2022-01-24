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
struct blkcg_policy {int /*<<< orphan*/  (* pd_offline_fn ) (int /*<<< orphan*/ ) ;} ;
struct blkcg_gq {int online; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  blkcg_node; int /*<<< orphan*/  q_node; TYPE_1__* q; int /*<<< orphan*/  stat_ios; int /*<<< orphan*/  stat_bytes; int /*<<< orphan*/ * pd; struct blkcg_gq* parent; struct blkcg* blkcg; } ;
struct blkcg {int /*<<< orphan*/  blkg_hint; int /*<<< orphan*/  blkg_tree; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int BLKCG_MAX_POLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct blkcg_policy** blkcg_policy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct blkcg_gq* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct blkcg_gq *blkg)
{
	struct blkcg *blkcg = blkg->blkcg;
	struct blkcg_gq *parent = blkg->parent;
	int i;

	FUNC6(&blkg->q->queue_lock);
	FUNC6(&blkcg->lock);

	/* Something wrong if we are trying to remove same group twice */
	FUNC0(FUNC5(&blkg->q_node));
	FUNC0(FUNC3(&blkg->blkcg_node));

	for (i = 0; i < BLKCG_MAX_POLS; i++) {
		struct blkcg_policy *pol = blkcg_policy[i];

		if (blkg->pd[i] && pol->pd_offline_fn)
			pol->pd_offline_fn(blkg->pd[i]);
	}

	if (parent) {
		FUNC1(&parent->stat_bytes, &blkg->stat_bytes);
		FUNC1(&parent->stat_ios, &blkg->stat_ios);
	}

	blkg->online = false;

	FUNC8(&blkcg->blkg_tree, blkg->q->id);
	FUNC4(&blkg->q_node);
	FUNC2(&blkg->blkcg_node);

	/*
	 * Both setting lookup hint to and clearing it from @blkg are done
	 * under queue_lock.  If it's not pointing to @blkg now, it never
	 * will.  Hint assignment itself can race safely.
	 */
	if (FUNC9(blkcg->blkg_hint) == blkg)
		FUNC10(blkcg->blkg_hint, NULL);

	/*
	 * Put the reference taken at the time of creation so that when all
	 * queues are gone, group can be destroyed.
	 */
	FUNC7(&blkg->refcnt);
}