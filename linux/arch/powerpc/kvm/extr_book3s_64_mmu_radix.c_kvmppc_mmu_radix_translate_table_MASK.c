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
typedef  int u64 ;
struct prtb_entry {int /*<<< orphan*/  prtb0; } ;
struct kvmppc_pte {int dummy; } ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int EINVAL ; 
 int PRTB_MASK ; 
 int PRTS_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm*,unsigned long,struct prtb_entry*,int) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,struct kvmppc_pte*,unsigned long,int*) ; 

int FUNC3(struct kvm_vcpu *vcpu, gva_t eaddr,
				     struct kvmppc_pte *gpte, u64 table,
				     int table_index, u64 *pte_ret_p)
{
	struct kvm *kvm = vcpu->kvm;
	int ret;
	unsigned long size, ptbl, root;
	struct prtb_entry entry;

	if ((table & PRTS_MASK) > 24)
		return -EINVAL;
	size = 1ul << ((table & PRTS_MASK) + 12);

	/* Is the table big enough to contain this entry? */
	if ((table_index * sizeof(entry)) >= size)
		return -EINVAL;

	/* Read the table to find the root of the radix tree */
	ptbl = (table & PRTB_MASK) + (table_index * sizeof(entry));
	ret = FUNC1(kvm, ptbl, &entry, sizeof(entry));
	if (ret)
		return ret;

	/* Root is stored in the first double word */
	root = FUNC0(entry.prtb0);

	return FUNC2(vcpu, eaddr, gpte, root, pte_ret_p);
}