#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  owner; } ;
struct TYPE_5__ {int /*<<< orphan*/  xics_phys; } ;
struct TYPE_6__ {TYPE_1__ kvm_hstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int ENODEV ; 
 unsigned int PVR_POWER9 ; 
 int /*<<< orphan*/  SPRN_PVR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_3__ kvm_ops_hv ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 TYPE_3__* kvmppc_hv_ops ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 TYPE_2__* local_paca ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 int no_mixing_hpt_and_radix ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  tlbie_capable ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(void)
{
	int r;

	if (!tlbie_capable) {
		FUNC13("KVM-HV: Host does not support TLBIE\n");
		return -ENODEV;
	}

	/*
	 * FIXME!! Do we need to check on all cpus ?
	 */
	r = FUNC6();
	if (r < 0)
		return -ENODEV;

	r = FUNC4();
	if (r)
		return r;

	r = FUNC3();
	if (r)
		return r;

	/*
	 * We need a way of accessing the XICS interrupt controller,
	 * either directly, via paca_ptrs[cpu]->kvm_hstate.xics_phys, or
	 * indirectly, via OPAL.
	 */
#ifdef CONFIG_SMP
	if (!xics_on_xive() && !kvmhv_on_pseries() &&
	    !local_paca->kvm_hstate.xics_phys) {
		struct device_node *np;

		np = of_find_compatible_node(NULL, NULL, "ibm,opal-intc");
		if (!np) {
			pr_err("KVM-HV: Cannot determine method for accessing XICS\n");
			return -ENODEV;
		}
		/* presence of intc confirmed - node can be dropped again */
		of_node_put(np);
	}
#endif

	kvm_ops_hv.owner = THIS_MODULE;
	kvmppc_hv_ops = &kvm_ops_hv;

	FUNC1();

	FUNC2();

	r = FUNC7();
	if (r)
		return r;

	if (FUNC9())
		r = FUNC8();

	/*
	 * POWER9 chips before version 2.02 can't have some threads in
	 * HPT mode and some in radix mode on the same core.
	 */
	if (FUNC0(CPU_FTR_ARCH_300)) {
		unsigned int pvr = FUNC10(SPRN_PVR);
		if ((pvr >> 16) == PVR_POWER9 &&
		    (((pvr & 0xe000) == 0 && (pvr & 0xfff) < 0x202) ||
		     ((pvr & 0xe000) == 0x2000 && (pvr & 0xfff) < 0x101)))
			no_mixing_hpt_and_radix = true;
	}

	return r;
}