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
struct bio_set {int /*<<< orphan*/  bio_integrity_pool; int /*<<< orphan*/  bvec_integrity_pool; } ;
struct bio_integrity_payload {unsigned int bip_max_vcnt; unsigned long bip_slab; struct bio* bip_bio; scalar_t__ bip_inline_vecs; scalar_t__ bip_vec; } ;
struct bio {int /*<<< orphan*/  bi_opf; struct bio_integrity_payload* bi_integrity; struct bio_set* bi_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned int BIP_INLINE_VECS ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct bio_integrity_payload* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_INTEGRITY ; 
 int /*<<< orphan*/  bip_inline_vecs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned long*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (unsigned long) ; 
 struct bio_integrity_payload* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio_integrity_payload* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio_integrity_payload*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bio_integrity_payload*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bio_integrity_payload*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 

struct bio_integrity_payload *FUNC10(struct bio *bio,
						  gfp_t gfp_mask,
						  unsigned int nr_vecs)
{
	struct bio_integrity_payload *bip;
	struct bio_set *bs = bio->bi_pool;
	unsigned inline_vecs;

	if (!bs || !FUNC6(&bs->bio_integrity_pool)) {
		bip = FUNC3(FUNC8(bip, bip_inline_vecs, nr_vecs), gfp_mask);
		inline_vecs = nr_vecs;
	} else {
		bip = FUNC4(&bs->bio_integrity_pool, gfp_mask);
		inline_vecs = BIP_INLINE_VECS;
	}

	if (FUNC9(!bip))
		return FUNC0(-ENOMEM);

	FUNC7(bip, 0, sizeof(*bip));

	if (nr_vecs > inline_vecs) {
		unsigned long idx = 0;

		bip->bip_vec = FUNC1(gfp_mask, nr_vecs, &idx,
					  &bs->bvec_integrity_pool);
		if (!bip->bip_vec)
			goto err;
		bip->bip_max_vcnt = FUNC2(idx);
		bip->bip_slab = idx;
	} else {
		bip->bip_vec = bip->bip_inline_vecs;
		bip->bip_max_vcnt = inline_vecs;
	}

	bip->bip_bio = bio;
	bio->bi_integrity = bip;
	bio->bi_opf |= REQ_INTEGRITY;

	return bip;
err:
	FUNC5(bip, &bs->bio_integrity_pool);
	return FUNC0(-ENOMEM);
}