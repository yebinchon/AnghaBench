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
struct bio_integrity_payload {int bip_vcnt; int /*<<< orphan*/  bip_iter; int /*<<< orphan*/  bip_vec; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bio_integrity_payload*) ; 
 int FUNC2 (struct bio_integrity_payload*) ; 
 struct bio_integrity_payload* FUNC3 (struct bio*) ; 
 struct bio_integrity_payload* FUNC4 (struct bio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct bio *bio, struct bio *bio_src,
			gfp_t gfp_mask)
{
	struct bio_integrity_payload *bip_src = FUNC3(bio_src);
	struct bio_integrity_payload *bip;

	FUNC0(bip_src == NULL);

	bip = FUNC4(bio, gfp_mask, bip_src->bip_vcnt);
	if (FUNC1(bip))
		return FUNC2(bip);

	FUNC5(bip->bip_vec, bip_src->bip_vec,
	       bip_src->bip_vcnt * sizeof(struct bio_vec));

	bip->bip_vcnt = bip_src->bip_vcnt;
	bip->bip_iter = bip_src->bip_iter;

	return 0;
}