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
struct kvm_vcpu_hv_synic {int /*<<< orphan*/  sint; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu_hv_synic*,int) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu_hv_synic *synic,
				      int vector)
{
	int i;

	for (i = 0; i < FUNC0(synic->sint); i++) {
		if (FUNC1(FUNC2(synic, i)) == vector)
			return true;
	}
	return false;
}