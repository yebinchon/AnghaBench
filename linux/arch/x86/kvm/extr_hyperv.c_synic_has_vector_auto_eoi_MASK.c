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
typedef  int u64 ;
struct kvm_vcpu_hv_synic {int /*<<< orphan*/  sint; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HV_SYNIC_SINT_AUTO_EOI ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct kvm_vcpu_hv_synic*,int) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu_hv_synic *synic,
				     int vector)
{
	int i;
	u64 sint_value;

	for (i = 0; i < FUNC0(synic->sint); i++) {
		sint_value = FUNC2(synic, i);
		if (FUNC1(sint_value) == vector &&
		    sint_value & HV_SYNIC_SINT_AUTO_EOI)
			return true;
	}
	return false;
}