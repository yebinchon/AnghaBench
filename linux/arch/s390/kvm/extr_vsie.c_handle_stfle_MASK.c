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
struct kvm_s390_sie_block {int fac; } ;
struct vsie_page {int /*<<< orphan*/  fac; TYPE_1__* scb_o; struct kvm_s390_sie_block scb_s; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
typedef  scalar_t__ __u64 ;
typedef  int __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  fac; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vsie_page*) ; 
 int FUNC3 (struct kvm_s390_sie_block*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
	struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
	__u32 fac = FUNC0(vsie_page->scb_o->fac) & 0x7ffffff8U;

	if (fac && FUNC4(vcpu->kvm, 7)) {
		FUNC2(vsie_page);
		if (FUNC1(vcpu, fac, &vsie_page->fac,
				    sizeof(vsie_page->fac)))
			return FUNC3(scb_s, 0x1090U);
		scb_s->fac = (__u32)(__u64) &vsie_page->fac;
	}
	return 0;
}