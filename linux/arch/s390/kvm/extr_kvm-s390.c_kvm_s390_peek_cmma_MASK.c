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
typedef  unsigned long u8 ;
struct kvm_s390_cmma_log {unsigned long start_gfn; unsigned long count; } ;
struct kvm {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 
 unsigned long FUNC1 (struct kvm*,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm, struct kvm_s390_cmma_log *args,
			      u8 *res, unsigned long bufsize)
{
	unsigned long pgstev, hva, cur_gfn = args->start_gfn;

	args->count = 0;
	while (args->count < bufsize) {
		hva = FUNC1(kvm, cur_gfn);
		/*
		 * We return an error if the first value was invalid, but we
		 * return successfully if at least one value was copied.
		 */
		if (FUNC2(hva))
			return args->count ? 0 : -EFAULT;
		if (FUNC0(kvm->mm, hva, &pgstev) < 0)
			pgstev = 0;
		res[args->count++] = (pgstev >> 24) & 0x43;
		cur_gfn++;
	}

	return 0;
}