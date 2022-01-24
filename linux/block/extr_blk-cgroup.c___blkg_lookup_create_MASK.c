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
struct request_queue {struct blkcg_gq* root_blkg; int /*<<< orphan*/  queue_lock; } ;
struct blkcg_gq {int dummy; } ;
struct blkcg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct blkcg_gq* FUNC2 (struct blkcg*,struct request_queue*,int) ; 
 struct blkcg* FUNC3 (struct blkcg*) ; 
 struct blkcg_gq* FUNC4 (struct blkcg*,struct request_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct blkcg_gq *FUNC7(struct blkcg *blkcg,
				      struct request_queue *q)
{
	struct blkcg_gq *blkg;

	FUNC1(!FUNC6());
	FUNC5(&q->queue_lock);

	blkg = FUNC2(blkcg, q, true);
	if (blkg)
		return blkg;

	/*
	 * Create blkgs walking down from blkcg_root to @blkcg, so that all
	 * non-root blkgs have access to their parents.  Returns the closest
	 * blkg to the intended blkg should blkg_create() fail.
	 */
	while (true) {
		struct blkcg *pos = blkcg;
		struct blkcg *parent = FUNC3(blkcg);
		struct blkcg_gq *ret_blkg = q->root_blkg;

		while (parent) {
			blkg = FUNC2(parent, q, false);
			if (blkg) {
				/* remember closest blkg */
				ret_blkg = blkg;
				break;
			}
			pos = parent;
			parent = FUNC3(parent);
		}

		blkg = FUNC4(pos, q, NULL);
		if (FUNC0(blkg))
			return ret_blkg;
		if (pos == blkcg)
			return blkg;
	}
}