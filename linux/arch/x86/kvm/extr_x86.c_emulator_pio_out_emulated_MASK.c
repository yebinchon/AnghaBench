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
struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pio_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PIO_OUT ; 
 struct kvm_vcpu* FUNC0 (struct x86_emulate_ctxt*) ; 
 int FUNC1 (struct kvm_vcpu*,int,unsigned short,void*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned short,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct x86_emulate_ctxt *ctxt,
				     int size, unsigned short port,
				     const void *val, unsigned int count)
{
	struct kvm_vcpu *vcpu = FUNC0(ctxt);

	FUNC2(vcpu->arch.pio_data, val, size * count);
	FUNC3(KVM_PIO_OUT, port, size, count, vcpu->arch.pio_data);
	return FUNC1(vcpu, size, port, (void *)val, count, false);
}