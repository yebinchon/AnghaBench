#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_12__ {unsigned long itdba; unsigned int icpua; int /*<<< orphan*/  gd; int /*<<< orphan*/  msl; scalar_t__ mso; } ;
struct sie_page {int /*<<< orphan*/  itdb; TYPE_5__ sie_block; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {TYPE_5__* sie_block; int /*<<< orphan*/  cputm_seqcount; TYPE_1__ local_int; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_9__ {scalar_t__ origin; } ;
struct TYPE_10__ {TYPE_2__ gisa_int; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_13__ {scalar_t__ has_gisaf; int /*<<< orphan*/  hamax; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct kvm_vcpu* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GISA_FORMAT1 ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int,char*,unsigned int,struct kvm_vcpu*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 struct kvm_vcpu* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int FUNC8 (struct kvm_vcpu*,struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,unsigned int) ; 
 TYPE_6__ sclp ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,struct kvm_vcpu*,TYPE_5__*) ; 

struct kvm_vcpu *FUNC13(struct kvm *kvm,
				      unsigned int id)
{
	struct kvm_vcpu *vcpu;
	struct sie_page *sie_page;
	int rc = -EINVAL;

	if (!FUNC7(kvm) && !FUNC9(kvm, id))
		goto out;

	rc = -ENOMEM;

	vcpu = FUNC6(kvm_vcpu_cache, GFP_KERNEL);
	if (!vcpu)
		goto out;

	FUNC0(sizeof(struct sie_page) != 4096);
	sie_page = (struct sie_page *) FUNC4(GFP_KERNEL);
	if (!sie_page)
		goto out_free_cpu;

	vcpu->arch.sie_block = &sie_page->sie_block;
	vcpu->arch.sie_block->itdba = (unsigned long) &sie_page->itdb;

	/* the real guest size will always be smaller than msl */
	vcpu->arch.sie_block->mso = 0;
	vcpu->arch.sie_block->msl = sclp.hamax;

	vcpu->arch.sie_block->icpua = id;
	FUNC11(&vcpu->arch.local_int.lock);
	vcpu->arch.sie_block->gd = (u32)(u64)kvm->arch.gisa_int.origin;
	if (vcpu->arch.sie_block->gd && sclp.has_gisaf)
		vcpu->arch.sie_block->gd |= GISA_FORMAT1;
	FUNC10(&vcpu->arch.cputm_seqcount);

	rc = FUNC8(vcpu, kvm, id);
	if (rc)
		goto out_free_sie_block;
	FUNC2(kvm, 3, "create cpu %d at 0x%pK, sie block at 0x%pK", id, vcpu,
		 vcpu->arch.sie_block);
	FUNC12(id, vcpu, vcpu->arch.sie_block);

	return vcpu;
out_free_sie_block:
	FUNC3((unsigned long)(vcpu->arch.sie_block));
out_free_cpu:
	FUNC5(kvm_vcpu_cache, vcpu);
out:
	return FUNC1(rc);
}