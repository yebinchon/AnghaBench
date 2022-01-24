#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  tsc_seq ;
struct pvclock_vcpu_time_info {int dummy; } ;
struct TYPE_5__ {int tsc_sequence; } ;
struct kvm_hv {int hv_tsc_page; int /*<<< orphan*/  hv_lock; TYPE_2__ tsc_ref; } ;
struct TYPE_4__ {struct kvm_hv hyperv; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HV_REFERENCE_TSC_PAGE ; 
 int HV_X64_MSR_TSC_REFERENCE_ADDRESS_SHIFT ; 
 int HV_X64_MSR_TSC_REFERENCE_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct pvclock_vcpu_time_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC4 (struct kvm*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  tsc_sequence ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct kvm *kvm,
			   struct pvclock_vcpu_time_info *hv_clock)
{
	struct kvm_hv *hv = &kvm->arch.hyperv;
	u32 tsc_seq;
	u64 gfn;

	FUNC0(sizeof(tsc_seq) != sizeof(hv->tsc_ref.tsc_sequence));
	FUNC0(FUNC7(HV_REFERENCE_TSC_PAGE, tsc_sequence) != 0);

	if (!(hv->hv_tsc_page & HV_X64_MSR_TSC_REFERENCE_ENABLE))
		return;

	FUNC5(&kvm->arch.hyperv.hv_lock);
	if (!(hv->hv_tsc_page & HV_X64_MSR_TSC_REFERENCE_ENABLE))
		goto out_unlock;

	gfn = hv->hv_tsc_page >> HV_X64_MSR_TSC_REFERENCE_ADDRESS_SHIFT;
	/*
	 * Because the TSC parameters only vary when there is a
	 * change in the master clock, do not bother with caching.
	 */
	if (FUNC9(FUNC3(kvm, FUNC2(gfn),
				    &tsc_seq, sizeof(tsc_seq))))
		goto out_unlock;

	/*
	 * While we're computing and writing the parameters, force the
	 * guest to use the time reference count MSR.
	 */
	hv->tsc_ref.tsc_sequence = 0;
	if (FUNC4(kvm, FUNC2(gfn),
			    &hv->tsc_ref, sizeof(hv->tsc_ref.tsc_sequence)))
		goto out_unlock;

	if (!FUNC1(hv_clock, &hv->tsc_ref))
		goto out_unlock;

	/* Ensure sequence is zero before writing the rest of the struct.  */
	FUNC8();
	if (FUNC4(kvm, FUNC2(gfn), &hv->tsc_ref, sizeof(hv->tsc_ref)))
		goto out_unlock;

	/*
	 * Now switch to the TSC page mechanism by writing the sequence.
	 */
	tsc_seq++;
	if (tsc_seq == 0xFFFFFFFF || tsc_seq == 0)
		tsc_seq = 1;

	/* Write the struct entirely before the non-zero sequence.  */
	FUNC8();

	hv->tsc_ref.tsc_sequence = tsc_seq;
	FUNC4(kvm, FUNC2(gfn),
			&hv->tsc_ref, sizeof(hv->tsc_ref.tsc_sequence));
out_unlock:
	FUNC6(&kvm->arch.hyperv.hv_lock);
}