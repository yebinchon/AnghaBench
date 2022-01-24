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
struct blk_integrity {TYPE_1__* profile; } ;
struct bio_integrity_payload {int bip_flags; int /*<<< orphan*/  bip_work; } ;
struct bio {int /*<<< orphan*/  bi_status; int /*<<< orphan*/  bi_disk; } ;
struct TYPE_2__ {scalar_t__ verify_fn; } ;

/* Variables and functions */
 int BIP_BLOCK_INTEGRITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ REQ_OP_READ ; 
 struct bio_integrity_payload* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  bio_integrity_verify_fn ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 struct blk_integrity* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kintegrityd_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC6(struct bio *bio)
{
	struct blk_integrity *bi = FUNC4(bio->bi_disk);
	struct bio_integrity_payload *bip = FUNC1(bio);

	if (FUNC3(bio) == REQ_OP_READ && !bio->bi_status &&
	    (bip->bip_flags & BIP_BLOCK_INTEGRITY) && bi->profile->verify_fn) {
		FUNC0(&bip->bip_work, bio_integrity_verify_fn);
		FUNC5(kintegrityd_wq, &bip->bip_work);
		return false;
	}

	FUNC2(bio);
	return true;
}