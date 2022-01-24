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
struct request_queue {int /*<<< orphan*/  queue_lock; struct blkcg_gq* root_blkg; } ;
struct blkcg_gq {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct blkcg_gq*) ; 
 int FUNC1 (struct blkcg_gq*) ; 
 int FUNC2 (struct request_queue*) ; 
 int FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  blkcg_root ; 
 struct blkcg_gq* FUNC4 (int /*<<< orphan*/ *,struct request_queue*,int /*<<< orphan*/ ) ; 
 struct blkcg_gq* FUNC5 (int /*<<< orphan*/ *,struct request_queue*,struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct request_queue *q)
{
	struct blkcg_gq *new_blkg, *blkg;
	bool preloaded;
	int ret;

	new_blkg = FUNC4(&blkcg_root, q, GFP_KERNEL);
	if (!new_blkg)
		return -ENOMEM;

	preloaded = !FUNC7(GFP_KERNEL);

	/* Make sure the root blkg exists. */
	FUNC9();
	FUNC11(&q->queue_lock);
	blkg = FUNC5(&blkcg_root, q, new_blkg);
	if (FUNC0(blkg))
		goto err_unlock;
	q->root_blkg = blkg;
	FUNC12(&q->queue_lock);
	FUNC10();

	if (preloaded)
		FUNC8();

	ret = FUNC2(q);
	if (ret)
		goto err_destroy_all;

	ret = FUNC3(q);
	if (ret)
		goto err_destroy_all;
	return 0;

err_destroy_all:
	FUNC6(q);
	return ret;
err_unlock:
	FUNC12(&q->queue_lock);
	FUNC10();
	if (preloaded)
		FUNC8();
	return FUNC1(blkg);
}