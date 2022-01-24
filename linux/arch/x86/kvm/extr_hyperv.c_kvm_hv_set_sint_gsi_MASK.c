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
typedef  size_t u32 ;
struct kvm_vcpu_hv_synic {int /*<<< orphan*/ * sint_to_gsi; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct kvm_vcpu_hv_synic* FUNC2 (struct kvm*,size_t) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm, u32 vpidx, u32 sint, int gsi)
{
	struct kvm_vcpu_hv_synic *synic;

	synic = FUNC2(kvm, vpidx);
	if (!synic)
		return -EINVAL;

	if (sint >= FUNC0(synic->sint_to_gsi))
		return -EINVAL;

	FUNC1(&synic->sint_to_gsi[sint], gsi);
	return 0;
}