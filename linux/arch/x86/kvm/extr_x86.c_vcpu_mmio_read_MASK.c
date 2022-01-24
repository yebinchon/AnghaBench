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
struct TYPE_4__ {TYPE_1__* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef  int gpa_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  KVM_TRACE_MMIO_READ ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ *,int,int,void*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,void*) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu, gpa_t addr, int len, void *v)
{
	int handled = 0;
	int n;

	do {
		n = FUNC3(len, 8);
		if (!(FUNC2(vcpu) &&
		      !FUNC1(vcpu, &vcpu->arch.apic->dev,
					 addr, n, v))
		    && FUNC0(vcpu, KVM_MMIO_BUS, addr, n, v))
			break;
		FUNC4(KVM_TRACE_MMIO_READ, n, addr, v);
		handled += n;
		addr += n;
		len -= n;
		v += n;
	} while (len);

	return handled;
}