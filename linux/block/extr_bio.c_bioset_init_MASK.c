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
struct bio_vec {int dummy; } ;
struct bio_set {unsigned int front_pad; int /*<<< orphan*/  rescue_workqueue; int /*<<< orphan*/  bvec_pool; int /*<<< orphan*/  bio_slab; int /*<<< orphan*/  bio_pool; int /*<<< orphan*/  rescue_work; int /*<<< orphan*/  rescue_list; int /*<<< orphan*/  rescue_lock; } ;

/* Variables and functions */
 int BIOSET_NEED_BVECS ; 
 int BIOSET_NEED_RESCUER ; 
 int BIO_INLINE_VECS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_alloc_rescue ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_set*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct bio_set *bs,
		unsigned int pool_size,
		unsigned int front_pad,
		int flags)
{
	unsigned int back_pad = BIO_INLINE_VECS * sizeof(struct bio_vec);

	bs->front_pad = front_pad;

	FUNC7(&bs->rescue_lock);
	FUNC3(&bs->rescue_list);
	FUNC0(&bs->rescue_work, bio_alloc_rescue);

	bs->bio_slab = FUNC2(front_pad + back_pad);
	if (!bs->bio_slab)
		return -ENOMEM;

	if (FUNC6(&bs->bio_pool, pool_size, bs->bio_slab))
		goto bad;

	if ((flags & BIOSET_NEED_BVECS) &&
	    FUNC5(&bs->bvec_pool, pool_size))
		goto bad;

	if (!(flags & BIOSET_NEED_RESCUER))
		return 0;

	bs->rescue_workqueue = FUNC1("bioset", WQ_MEM_RECLAIM, 0);
	if (!bs->rescue_workqueue)
		goto bad;

	return 0;
bad:
	FUNC4(bs);
	return -ENOMEM;
}