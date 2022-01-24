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
struct TYPE_2__ {int /*<<< orphan*/  cpu_feat; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 unsigned long KVM_S390_VM_CPU_FEAT_NR_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct kvm *kvm, unsigned long nr)
{
	FUNC0(nr >= KVM_S390_VM_CPU_FEAT_NR_BITS);
	return FUNC1(nr, kvm->arch.cpu_feat);
}