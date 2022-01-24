#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_3__ {int blob_size_64; int blob_size_32; scalar_t__ blob_addr_32; scalar_t__ blob_addr_64; } ;
struct TYPE_4__ {TYPE_1__ xen_hvm_config; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int*) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int FUNC1 (int*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*,int,int*,int) ; 
 int* FUNC5 (int*,int) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu, u64 data)
{
	struct kvm *kvm = vcpu->kvm;
	int lm = FUNC2(vcpu);
	u8 *blob_addr = lm ? (u8 *)(long)kvm->arch.xen_hvm_config.blob_addr_64
		: (u8 *)(long)kvm->arch.xen_hvm_config.blob_addr_32;
	u8 blob_size = lm ? kvm->arch.xen_hvm_config.blob_size_64
		: kvm->arch.xen_hvm_config.blob_size_32;
	u32 page_num = data & ~PAGE_MASK;
	u64 page_addr = data & PAGE_MASK;
	u8 *page;
	int r;

	r = -E2BIG;
	if (page_num >= blob_size)
		goto out;
	r = -ENOMEM;
	page = FUNC5(blob_addr + (page_num * PAGE_SIZE), PAGE_SIZE);
	if (FUNC0(page)) {
		r = FUNC1(page);
		goto out;
	}
	if (FUNC4(vcpu, page_addr, page, PAGE_SIZE))
		goto out_free;
	r = 0;
out_free:
	FUNC3(page);
out:
	return r;
}