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
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, int *db, int *l)
{
	u32 ar = FUNC1(FUNC0(vcpu), VCPU_SREG_CS);

	*db = (ar >> 14) & 1;
	*l = (ar >> 13) & 1;
}