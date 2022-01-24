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
struct mm_id {int dummy; } ;

/* Variables and functions */
 unsigned long MAP_FIXED ; 
 unsigned long MAP_SHARED ; 
 unsigned long FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  STUB_MMAP_NR ; 
 int FUNC1 (struct mm_id*,int /*<<< orphan*/ ,unsigned long*,unsigned long,void**,int) ; 

int FUNC2(struct mm_id * mm_idp, unsigned long virt, unsigned long len, int prot,
	int phys_fd, unsigned long long offset, int done, void **data)
{
	int ret;
	unsigned long args[] = { virt, len, prot,
				 MAP_SHARED | MAP_FIXED, phys_fd,
				 FUNC0(offset) };

	ret = FUNC1(mm_idp, STUB_MMAP_NR, args, virt,
			       data, done);

	return ret;
}