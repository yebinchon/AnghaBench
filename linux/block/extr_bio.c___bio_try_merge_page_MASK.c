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
struct bio_vec {unsigned int bv_len; } ;
struct TYPE_2__ {unsigned int bi_size; } ;
struct bio {int bi_vcnt; TYPE_1__ bi_iter; struct bio_vec* bi_io_vec; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLONED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bio_vec*,struct page*,unsigned int,unsigned int,int*) ; 

bool FUNC3(struct bio *bio, struct page *page,
		unsigned int len, unsigned int off, bool *same_page)
{
	if (FUNC0(FUNC1(bio, BIO_CLONED)))
		return false;

	if (bio->bi_vcnt > 0) {
		struct bio_vec *bv = &bio->bi_io_vec[bio->bi_vcnt - 1];

		if (FUNC2(bv, page, len, off, same_page)) {
			bv->bv_len += len;
			bio->bi_iter.bi_size += len;
			return true;
		}
	}
	return false;
}