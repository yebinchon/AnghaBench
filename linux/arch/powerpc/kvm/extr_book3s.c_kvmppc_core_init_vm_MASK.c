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
struct TYPE_4__ {TYPE_1__* kvm_ops; int /*<<< orphan*/  rtas_token_lock; int /*<<< orphan*/  rtas_tokens; int /*<<< orphan*/  spapr_tce_tables; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* init_vm ) (struct kvm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct kvm*) ; 

int FUNC4(struct kvm *kvm)
{

#ifdef CONFIG_PPC64
	INIT_LIST_HEAD_RCU(&kvm->arch.spapr_tce_tables);
	INIT_LIST_HEAD(&kvm->arch.rtas_tokens);
	mutex_init(&kvm->arch.rtas_token_lock);
#endif

	return kvm->arch.kvm_ops->init_vm(kvm);
}