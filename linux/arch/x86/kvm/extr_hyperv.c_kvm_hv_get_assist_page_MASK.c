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
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ pv_eoi; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;
struct hv_vp_assist_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct hv_vp_assist_page*,int) ; 

bool FUNC2(struct kvm_vcpu *vcpu,
			    struct hv_vp_assist_page *assist_page)
{
	if (!FUNC0(vcpu))
		return false;
	return !FUNC1(vcpu->kvm, &vcpu->arch.pv_eoi.data,
				      assist_page, sizeof(*assist_page));
}