#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union asce {int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  psw_t ;
typedef  enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;
struct TYPE_6__ {scalar_t__ dat; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpsw; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long*) ; 
 int ENOMEM ; 
 int GACC_STORE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int FUNC2 (struct kvm_vcpu*,union asce*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ,unsigned long*,unsigned long,union asce,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned long,void*,unsigned long) ; 
 unsigned long FUNC7 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned long,void*,unsigned long) ; 
 unsigned long FUNC9 (scalar_t__,unsigned long) ; 
 TYPE_3__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*) ; 
 unsigned long* FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct kvm_vcpu *vcpu, unsigned long ga, u8 ar, void *data,
		 unsigned long len, enum gacc_mode mode)
{
	psw_t *psw = &vcpu->arch.sie_block->gpsw;
	unsigned long _len, nr_pages, gpa, idx;
	unsigned long pages_array[2];
	unsigned long *pages;
	int need_ipte_lock;
	union asce asce;
	int rc;

	if (!len)
		return 0;
	ga = FUNC7(vcpu, ga);
	rc = FUNC2(vcpu, &asce, ga, ar, mode);
	if (rc)
		return rc;
	nr_pages = (((ga & ~PAGE_MASK) + len - 1) >> PAGE_SHIFT) + 1;
	pages = pages_array;
	if (nr_pages > FUNC0(pages_array))
		pages = FUNC12(FUNC1(nr_pages, sizeof(unsigned long)));
	if (!pages)
		return -ENOMEM;
	need_ipte_lock = FUNC10(*psw).dat && !asce.r;
	if (need_ipte_lock)
		FUNC4(vcpu);
	rc = FUNC3(vcpu, ga, ar, pages, nr_pages, asce, mode);
	for (idx = 0; idx < nr_pages && !rc; idx++) {
		gpa = *(pages + idx) + (ga & ~PAGE_MASK);
		_len = FUNC9(PAGE_SIZE - (gpa & ~PAGE_MASK), len);
		if (mode == GACC_STORE)
			rc = FUNC8(vcpu->kvm, gpa, data, _len);
		else
			rc = FUNC6(vcpu->kvm, gpa, data, _len);
		len -= _len;
		ga += _len;
		data += _len;
	}
	if (need_ipte_lock)
		FUNC5(vcpu);
	if (nr_pages > FUNC0(pages_array))
		FUNC11(pages);
	return rc;
}