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
struct kvm_vcpu_hv_synic {int /*<<< orphan*/ * sint_to_gsi; int /*<<< orphan*/ * sint; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HV_SYNIC_SINT_MASKED ; 
 int /*<<< orphan*/  HV_SYNIC_VERSION_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu_hv_synic*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu_hv_synic *synic)
{
	int i;

	FUNC3(synic, 0, sizeof(*synic));
	synic->version = HV_SYNIC_VERSION_1;
	for (i = 0; i < FUNC0(synic->sint); i++) {
		FUNC1(&synic->sint[i], HV_SYNIC_SINT_MASKED);
		FUNC2(&synic->sint_to_gsi[i], -1);
	}
}