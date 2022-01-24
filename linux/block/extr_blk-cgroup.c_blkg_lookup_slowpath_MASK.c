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
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  id; } ;
struct blkcg_gq {struct request_queue* q; } ;
struct blkcg {int /*<<< orphan*/  blkg_hint; int /*<<< orphan*/  blkg_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct blkcg_gq* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct blkcg_gq*) ; 

struct blkcg_gq *FUNC3(struct blkcg *blkcg,
				      struct request_queue *q, bool update_hint)
{
	struct blkcg_gq *blkg;

	/*
	 * Hint didn't match.  Look up from the radix tree.  Note that the
	 * hint can only be updated under queue_lock as otherwise @blkg
	 * could have already been removed from blkg_tree.  The caller is
	 * responsible for grabbing queue_lock if @update_hint.
	 */
	blkg = FUNC1(&blkcg->blkg_tree, q->id);
	if (blkg && blkg->q == q) {
		if (update_hint) {
			FUNC0(&q->queue_lock);
			FUNC2(blkcg->blkg_hint, blkg);
		}
		return blkg;
	}

	return NULL;
}