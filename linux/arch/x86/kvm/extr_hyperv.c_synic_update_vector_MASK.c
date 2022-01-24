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
struct kvm_vcpu_hv_synic {int /*<<< orphan*/  auto_eoi_bitmap; int /*<<< orphan*/  vec_bitmap; } ;

/* Variables and functions */
 int HV_SYNIC_FIRST_VALID_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu_hv_synic*,int) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu_hv_synic*,int) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu_hv_synic *synic,
				int vector)
{
	if (vector < HV_SYNIC_FIRST_VALID_VECTOR)
		return;

	if (FUNC3(synic, vector))
		FUNC1(vector, synic->vec_bitmap);
	else
		FUNC0(vector, synic->vec_bitmap);

	if (FUNC2(synic, vector))
		FUNC1(vector, synic->auto_eoi_bitmap);
	else
		FUNC0(vector, synic->auto_eoi_bitmap);
}