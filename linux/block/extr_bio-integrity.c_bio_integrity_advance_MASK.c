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
struct blk_integrity {int dummy; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio_integrity_payload {TYPE_1__ bip_iter; int /*<<< orphan*/  bip_vec; } ;
struct bio {int /*<<< orphan*/  bi_disk; } ;

/* Variables and functions */
 struct bio_integrity_payload* FUNC0 (struct bio*) ; 
 unsigned int FUNC1 (struct blk_integrity*,unsigned int) ; 
 struct blk_integrity* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 

void FUNC4(struct bio *bio, unsigned int bytes_done)
{
	struct bio_integrity_payload *bip = FUNC0(bio);
	struct blk_integrity *bi = FUNC2(bio->bi_disk);
	unsigned bytes = FUNC1(bi, bytes_done >> 9);

	bip->bip_iter.bi_sector += bytes_done >> 9;
	FUNC3(bip->bip_vec, &bip->bip_iter, bytes);
}