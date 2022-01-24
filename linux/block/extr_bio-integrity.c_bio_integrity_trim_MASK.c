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
struct TYPE_2__ {int /*<<< orphan*/  bi_size; } ;
struct bio_integrity_payload {TYPE_1__ bip_iter; } ;
struct bio {int /*<<< orphan*/  bi_disk; } ;

/* Variables and functions */
 struct bio_integrity_payload* FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_integrity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 struct blk_integrity* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct bio *bio)
{
	struct bio_integrity_payload *bip = FUNC0(bio);
	struct blk_integrity *bi = FUNC3(bio->bi_disk);

	bip->bip_iter.bi_size = FUNC1(bi, FUNC2(bio));
}