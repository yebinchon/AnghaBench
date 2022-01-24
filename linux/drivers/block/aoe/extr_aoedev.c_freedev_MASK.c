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
struct aoetgt {int dummy; } ;
struct aoedev {int flags; int ntargets; int /*<<< orphan*/  lock; int /*<<< orphan*/  sysminor; int /*<<< orphan*/  bufpool; struct aoetgt** targets; int /*<<< orphan*/  blkq; int /*<<< orphan*/  tag_set; scalar_t__ gd; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int DEVFL_FREED ; 
 int DEVFL_FREEING ; 
 int DEVFL_TKILL ; 
 int /*<<< orphan*/  FUNC0 (struct aoedev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct aoedev*,struct aoetgt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct aoedev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC12(struct aoedev *d)
{
	struct aoetgt **t, **e;
	int freeing = 0;
	unsigned long flags;

	FUNC10(&d->lock, flags);
	if (d->flags & DEVFL_TKILL
	&& !(d->flags & DEVFL_FREEING)) {
		d->flags |= DEVFL_FREEING;
		freeing = 1;
	}
	FUNC11(&d->lock, flags);
	if (!freeing)
		return;

	FUNC4(&d->timer);
	if (d->gd) {
		FUNC0(d);
		FUNC3(d->gd);
		FUNC8(d->gd);
		FUNC2(&d->tag_set);
		FUNC1(d->blkq);
	}
	t = d->targets;
	e = t + d->ntargets;
	for (; t < e && *t; t++)
		FUNC5(d, *t);

	FUNC6(d->bufpool);
	FUNC9(d);
	FUNC7(d->sysminor);

	FUNC10(&d->lock, flags);
	d->flags |= DEVFL_FREED;
	FUNC11(&d->lock, flags);
}