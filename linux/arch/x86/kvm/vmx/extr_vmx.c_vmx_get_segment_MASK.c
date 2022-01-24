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
typedef  int u32 ;
struct TYPE_2__ {struct kvm_segment* segs; scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_1__ rmode; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {scalar_t__ selector; int unusable; int type; int s; int dpl; int present; int avl; int l; int db; int g; int /*<<< orphan*/  limit; void* base; } ;

/* Variables and functions */
 int VCPU_SREG_LDTR ; 
 int VCPU_SREG_TR ; 
 struct vcpu_vmx* FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct vcpu_vmx*,int) ; 
 void* FUNC2 (struct vcpu_vmx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_vmx*,int) ; 
 scalar_t__ FUNC4 (struct vcpu_vmx*,int) ; 

void FUNC5(struct kvm_vcpu *vcpu, struct kvm_segment *var, int seg)
{
	struct vcpu_vmx *vmx = FUNC0(vcpu);
	u32 ar;

	if (vmx->rmode.vm86_active && seg != VCPU_SREG_LDTR) {
		*var = vmx->rmode.segs[seg];
		if (seg == VCPU_SREG_TR
		    || var->selector == FUNC4(vmx, seg))
			return;
		var->base = FUNC2(vmx, seg);
		var->selector = FUNC4(vmx, seg);
		return;
	}
	var->base = FUNC2(vmx, seg);
	var->limit = FUNC3(vmx, seg);
	var->selector = FUNC4(vmx, seg);
	ar = FUNC1(vmx, seg);
	var->unusable = (ar >> 16) & 1;
	var->type = ar & 15;
	var->s = (ar >> 4) & 1;
	var->dpl = (ar >> 5) & 3;
	/*
	 * Some userspaces do not preserve unusable property. Since usable
	 * segment has to be present according to VMX spec we can use present
	 * property to amend userspace bug by making unusable segment always
	 * nonpresent. vmx_segment_access_rights() already marks nonpresent
	 * segment as unusable.
	 */
	var->present = !var->unusable;
	var->avl = (ar >> 12) & 1;
	var->l = (ar >> 13) & 1;
	var->db = (ar >> 14) & 1;
	var->g = (ar >> 15) & 1;
}