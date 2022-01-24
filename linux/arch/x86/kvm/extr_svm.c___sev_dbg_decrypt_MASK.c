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
struct kvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm*,unsigned long,unsigned long,int,int*,int) ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm, unsigned long src_paddr,
			     unsigned long dst_paddr, int sz, int *err)
{
	int offset;

	/*
	 * Its safe to read more than we are asked, caller should ensure that
	 * destination has enough space.
	 */
	src_paddr = FUNC1(src_paddr, 16);
	offset = src_paddr & 15;
	sz = FUNC2(sz + offset, 16);

	return FUNC0(kvm, src_paddr, dst_paddr, sz, err, false);
}