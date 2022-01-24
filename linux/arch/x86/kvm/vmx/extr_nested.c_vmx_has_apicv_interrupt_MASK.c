#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_PROCPRI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 

__attribute__((used)) static u8 FUNC2(struct kvm_vcpu *vcpu)
{
	u8 rvi = FUNC1();
	u8 vppr = FUNC0(vcpu->arch.apic, APIC_PROCPRI);

	return ((rvi & 0xf0) > (vppr & 0xf0));
}