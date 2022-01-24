#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_DEV_TYPE_XICS ; 
 int /*<<< orphan*/  KVM_DEV_TYPE_XIVE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_xics_ops ; 
 int /*<<< orphan*/  kvm_xive_native_ops ; 
 int /*<<< orphan*/  kvm_xive_ops ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
	int r;

	r = FUNC0(NULL, sizeof(struct kvm_vcpu), 0, THIS_MODULE);
	if (r)
		return r;
#ifdef CONFIG_KVM_BOOK3S_32_HANDLER
	r = kvmppc_book3s_init_pr();
#endif

#ifdef CONFIG_KVM_XICS
#ifdef CONFIG_KVM_XIVE
	if (xics_on_xive()) {
		kvmppc_xive_init_module();
		kvm_register_device_ops(&kvm_xive_ops, KVM_DEV_TYPE_XICS);
		if (kvmppc_xive_native_supported()) {
			kvmppc_xive_native_init_module();
			kvm_register_device_ops(&kvm_xive_native_ops,
						KVM_DEV_TYPE_XIVE);
		}
	} else
#endif
		kvm_register_device_ops(&kvm_xics_ops, KVM_DEV_TYPE_XICS);
#endif
	return r;
}