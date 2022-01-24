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
struct kvm_split_mode {scalar_t__ do_restore; int /*<<< orphan*/  host_lpcr; } ;
struct TYPE_3__ {scalar_t__ tid; int /*<<< orphan*/ * kvm_split_mode; } ;
struct TYPE_4__ {TYPE_1__ kvm_hstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHASE_OUT_OF_GUEST ; 
 int /*<<< orphan*/  PHASE_RESET_LPCR ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  SPRN_LPID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* local_paca ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_split_mode*,int /*<<< orphan*/ ) ; 

void FUNC5(struct kvm_split_mode *sip)
{
	/* we're out of the guest... */
	FUNC4(sip, PHASE_OUT_OF_GUEST);

	FUNC1(SPRN_LPID, 0);
	FUNC1(SPRN_LPCR, sip->host_lpcr);
	FUNC0();

	if (local_paca->kvm_hstate.tid == 0) {
		sip->do_restore = 0;
		FUNC3();	/* order store of do_restore vs. phase */
	}

	FUNC4(sip, PHASE_RESET_LPCR);
	FUNC2();
	local_paca->kvm_hstate.kvm_split_mode = NULL;
}