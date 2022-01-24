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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_cpuid_entry2 {int dummy; } ;

/* Variables and functions */
 unsigned int KVM_GET_EMULATED_CPUID ; 
 int FUNC0 (struct kvm_cpuid_entry2*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (struct kvm_cpuid_entry2*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct kvm_cpuid_entry2 *entry, u32 func,
			 int *nent, int maxnent, unsigned int type)
{
	if (type == KVM_GET_EMULATED_CPUID)
		return FUNC1(entry, func, nent, maxnent);

	return FUNC0(entry, func, nent, maxnent);
}