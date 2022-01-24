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
struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct bio_vec {unsigned int bv_offset; unsigned int bv_len; struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; } ;
typedef  unsigned long phys_addr_t ;

/* Variables and functions */
 int FUNC0 (struct bio*,struct page*,unsigned int,unsigned int,int*) ; 
 unsigned int FUNC1 (struct page*) ; 
 unsigned int FUNC2 (struct request_queue*) ; 
 unsigned long FUNC3 (struct request_queue*) ; 

__attribute__((used)) static bool FUNC4(struct request_queue *q, struct bio *bio,
		struct page *page, unsigned len, unsigned offset,
		bool *same_page)
{
	struct bio_vec *bv = &bio->bi_io_vec[bio->bi_vcnt - 1];
	unsigned long mask = FUNC3(q);
	phys_addr_t addr1 = FUNC1(bv->bv_page) + bv->bv_offset;
	phys_addr_t addr2 = FUNC1(page) + offset + len - 1;

	if ((addr1 | mask) != (addr2 | mask))
		return false;
	if (bv->bv_len + len > FUNC2(q))
		return false;
	return FUNC0(bio, page, len, offset, same_page);
}