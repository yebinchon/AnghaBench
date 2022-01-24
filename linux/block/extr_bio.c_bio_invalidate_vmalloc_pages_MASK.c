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
struct bio {unsigned long bi_vcnt; scalar_t__ bi_private; TYPE_1__* bi_io_vec; } ;
struct TYPE_2__ {scalar_t__ bv_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bio *bio)
{
#ifdef ARCH_HAS_FLUSH_KERNEL_DCACHE_PAGE
	if (bio->bi_private && !op_is_write(bio_op(bio))) {
		unsigned long i, len = 0;

		for (i = 0; i < bio->bi_vcnt; i++)
			len += bio->bi_io_vec[i].bv_len;
		invalidate_kernel_vmap_range(bio->bi_private, len);
	}
#endif
}