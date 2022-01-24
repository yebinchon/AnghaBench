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
struct kvmppc_vcpu_book3s {int* context_id; int proto_vsid_max; int proto_vsid_first; int proto_vsid_next; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int ESID_BITS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 struct kvmppc_vcpu_book3s* FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_book3s *vcpu3s = FUNC2(vcpu);
	int err;

	err = FUNC0();
	if (err < 0)
		return -1;
	vcpu3s->context_id[0] = err;

	vcpu3s->proto_vsid_max = ((u64)(vcpu3s->context_id[0] + 1)
				  << ESID_BITS) - 1;
	vcpu3s->proto_vsid_first = (u64)vcpu3s->context_id[0] << ESID_BITS;
	vcpu3s->proto_vsid_next = vcpu3s->proto_vsid_first;

	FUNC1(vcpu);

	return 0;
}