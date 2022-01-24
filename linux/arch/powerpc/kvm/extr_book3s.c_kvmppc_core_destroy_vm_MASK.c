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
struct TYPE_6__ {int /*<<< orphan*/ * xics_on_xive; int /*<<< orphan*/ * native; } ;
struct TYPE_5__ {TYPE_3__ xive_devices; int /*<<< orphan*/  spapr_tce_tables; TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy_vm ) (struct kvm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 

void FUNC5(struct kvm *kvm)
{
	kvm->arch.kvm_ops->destroy_vm(kvm);

#ifdef CONFIG_PPC64
	kvmppc_rtas_tokens_free(kvm);
	WARN_ON(!list_empty(&kvm->arch.spapr_tce_tables));
#endif

#ifdef CONFIG_KVM_XICS
	/*
	 * Free the XIVE devices which are not directly freed by the
	 * device 'release' method
	 */
	kfree(kvm->arch.xive_devices.native);
	kvm->arch.xive_devices.native = NULL;
	kfree(kvm->arch.xive_devices.xics_on_xive);
	kvm->arch.xive_devices.xics_on_xive = NULL;
#endif /* CONFIG_KVM_XICS */
}