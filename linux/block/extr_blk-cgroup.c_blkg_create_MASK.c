#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  blkg_list; int /*<<< orphan*/  id; int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  queue_lock; } ;
struct blkcg_policy {int /*<<< orphan*/  (* pd_online_fn ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pd_init_fn ) (int /*<<< orphan*/ ) ;} ;
struct blkcg_gq {int online; int /*<<< orphan*/ * pd; int /*<<< orphan*/  q_node; int /*<<< orphan*/  blkcg_node; int /*<<< orphan*/  parent; struct bdi_writeback_congested* wb_congested; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct blkcg {TYPE_1__ css; int /*<<< orphan*/  lock; int /*<<< orphan*/  blkg_list; int /*<<< orphan*/  blkg_tree; } ;
struct bdi_writeback_congested {int dummy; } ;

/* Variables and functions */
 int BLKCG_MAX_POLS ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct blkcg_gq* FUNC0 (int) ; 
 int GFP_NOWAIT ; 
 scalar_t__ FUNC1 (int) ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct request_queue*,int) ; 
 scalar_t__ FUNC3 (struct request_queue*) ; 
 scalar_t__ FUNC4 (struct blkcg*) ; 
 struct blkcg_policy** blkcg_policy ; 
 struct blkcg_gq* FUNC5 (struct blkcg*,struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 
 struct bdi_writeback_congested* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct bdi_writeback_congested*) ; 

__attribute__((used)) static struct blkcg_gq *FUNC24(struct blkcg *blkcg,
				    struct request_queue *q,
				    struct blkcg_gq *new_blkg)
{
	struct blkcg_gq *blkg;
	struct bdi_writeback_congested *wb_congested;
	int i, ret;

	FUNC1(!FUNC16());
	FUNC14(&q->queue_lock);

	/* request_queue is dying, do not create/recreate a blkg */
	if (FUNC3(q)) {
		ret = -ENODEV;
		goto err_free_blkg;
	}

	/* blkg holds a reference to blkcg */
	if (!FUNC10(&blkcg->css)) {
		ret = -ENODEV;
		goto err_free_blkg;
	}

	wb_congested = FUNC22(q->backing_dev_info,
					       blkcg->css.id,
					       GFP_NOWAIT | __GFP_NOWARN);
	if (!wb_congested) {
		ret = -ENOMEM;
		goto err_put_css;
	}

	/* allocate */
	if (!new_blkg) {
		new_blkg = FUNC5(blkcg, q, GFP_NOWAIT | __GFP_NOWARN);
		if (FUNC21(!new_blkg)) {
			ret = -ENOMEM;
			goto err_put_congested;
		}
	}
	blkg = new_blkg;
	blkg->wb_congested = wb_congested;

	/* link parent */
	if (FUNC4(blkcg)) {
		blkg->parent = FUNC2(FUNC4(blkcg), q, false);
		if (FUNC1(!blkg->parent)) {
			ret = -ENODEV;
			goto err_put_congested;
		}
		FUNC7(blkg->parent);
	}

	/* invoke per-policy init */
	for (i = 0; i < BLKCG_MAX_POLS; i++) {
		struct blkcg_policy *pol = blkcg_policy[i];

		if (blkg->pd[i] && pol->pd_init_fn)
			pol->pd_init_fn(blkg->pd[i]);
	}

	/* insert */
	FUNC17(&blkcg->lock);
	ret = FUNC15(&blkcg->blkg_tree, q->id, blkg);
	if (FUNC12(!ret)) {
		FUNC11(&blkg->blkcg_node, &blkcg->blkg_list);
		FUNC13(&blkg->q_node, &q->blkg_list);

		for (i = 0; i < BLKCG_MAX_POLS; i++) {
			struct blkcg_policy *pol = blkcg_policy[i];

			if (blkg->pd[i] && pol->pd_online_fn)
				pol->pd_online_fn(blkg->pd[i]);
		}
	}
	blkg->online = true;
	FUNC18(&blkcg->lock);

	if (!ret)
		return blkg;

	/* @blkg failed fully initialized, use the usual release path */
	FUNC8(blkg);
	return FUNC0(ret);

err_put_congested:
	FUNC23(wb_congested);
err_put_css:
	FUNC9(&blkcg->css);
err_free_blkg:
	FUNC6(new_blkg);
	return FUNC0(ret);
}