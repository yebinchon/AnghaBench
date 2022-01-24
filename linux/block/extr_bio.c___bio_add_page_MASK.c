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
struct page {int dummy; } ;
struct bio_vec {unsigned int bv_offset; unsigned int bv_len; struct page* bv_page; } ;
struct TYPE_2__ {unsigned int bi_size; } ;
struct bio {size_t bi_vcnt; TYPE_1__ bi_iter; struct bio_vec* bi_io_vec; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLONED ; 
 int /*<<< orphan*/  BIO_WORKINGSET ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct bio *bio, struct page *page,
		unsigned int len, unsigned int off)
{
	struct bio_vec *bv = &bio->bi_io_vec[bio->bi_vcnt];

	FUNC1(FUNC2(bio, BIO_CLONED));
	FUNC1(FUNC3(bio, len));

	bv->bv_page = page;
	bv->bv_offset = off;
	bv->bv_len = len;

	bio->bi_iter.bi_size += len;
	bio->bi_vcnt++;

	if (!FUNC2(bio, BIO_WORKINGSET) && FUNC5(FUNC0(page)))
		FUNC4(bio, BIO_WORKINGSET);
}