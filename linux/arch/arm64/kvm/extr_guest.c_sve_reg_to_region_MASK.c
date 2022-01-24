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
typedef  scalar_t__ u64 ;
struct sve_state_reg_region {scalar_t__ klen; scalar_t__ upad; int /*<<< orphan*/  koffset; } ;
struct TYPE_2__ {int /*<<< orphan*/  sve_max_vl; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_one_reg {unsigned int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ KVM_ARM64_SVE_MAX_SLICES ; 
 scalar_t__ const FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 unsigned int KVM_SVE_PREG_SIZE ; 
 unsigned int KVM_SVE_ZREG_SIZE ; 
 scalar_t__ SVE_NUM_PREGS ; 
 scalar_t__ SVE_NUM_SLICES ; 
 scalar_t__ SVE_NUM_ZREGS ; 
 unsigned int SVE_REG_ID_MASK ; 
 unsigned int SVE_REG_ID_SHIFT ; 
 int SVE_REG_SLICE_MASK ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int SVE_SIG_REGS_OFFSET ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,size_t) ; 
 scalar_t__ FUNC10 (unsigned int,unsigned int) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 size_t FUNC13 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC14(struct sve_state_reg_region *region,
			     struct kvm_vcpu *vcpu,
			     const struct kvm_one_reg *reg)
{
	/* reg ID ranges for Z- registers */
	const u64 zreg_id_min = FUNC3(0, 0);
	const u64 zreg_id_max = FUNC3(SVE_NUM_ZREGS - 1,
						       SVE_NUM_SLICES - 1);

	/* reg ID ranges for P- registers and FFR (which are contiguous) */
	const u64 preg_id_min = FUNC2(0, 0);
	const u64 preg_id_max = FUNC1(SVE_NUM_SLICES - 1);

	unsigned int vq;
	unsigned int reg_num;

	unsigned int reqoffset, reqlen; /* User-requested offset and length */
	unsigned int maxlen; /* Maxmimum permitted length */

	size_t sve_state_size;

	const u64 last_preg_id = FUNC2(SVE_NUM_PREGS - 1,
							SVE_NUM_SLICES - 1);

	/* Verify that the P-regs and FFR really do have contiguous IDs: */
	FUNC0(FUNC1(0) != last_preg_id + 1);

	/* Verify that we match the UAPI header: */
	FUNC0(SVE_NUM_SLICES != KVM_ARM64_SVE_MAX_SLICES);

	reg_num = (reg->id & SVE_REG_ID_MASK) >> SVE_REG_ID_SHIFT;

	if (reg->id >= zreg_id_min && reg->id <= zreg_id_max) {
		if (!FUNC12(vcpu) || (reg->id & SVE_REG_SLICE_MASK) > 0)
			return -ENOENT;

		vq = FUNC11(vcpu->arch.sve_max_vl);

		reqoffset = FUNC6(vq, reg_num) -
				SVE_SIG_REGS_OFFSET;
		reqlen = KVM_SVE_ZREG_SIZE;
		maxlen = FUNC7(vq);
	} else if (reg->id >= preg_id_min && reg->id <= preg_id_max) {
		if (!FUNC12(vcpu) || (reg->id & SVE_REG_SLICE_MASK) > 0)
			return -ENOENT;

		vq = FUNC11(vcpu->arch.sve_max_vl);

		reqoffset = FUNC4(vq, reg_num) -
				SVE_SIG_REGS_OFFSET;
		reqlen = KVM_SVE_PREG_SIZE;
		maxlen = FUNC5(vq);
	} else {
		return -EINVAL;
	}

	sve_state_size = FUNC13(vcpu);
	if (FUNC8(!sve_state_size))
		return -EINVAL;

	region->koffset = FUNC9(reqoffset, sve_state_size);
	region->klen = FUNC10(maxlen, reqlen);
	region->upad = reqlen - region->klen;

	return 0;
}