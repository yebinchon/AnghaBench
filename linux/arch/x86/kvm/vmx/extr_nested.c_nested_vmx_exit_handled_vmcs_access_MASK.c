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
typedef  unsigned long u8 ;
typedef  int u32 ;
struct vmcs12 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  VMX_INSTRUCTION_INFO ; 
 unsigned long FUNC0 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,scalar_t__,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmcs12*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct kvm_vcpu *vcpu,
	struct vmcs12 *vmcs12, gpa_t bitmap)
{
	u32 vmx_instruction_info;
	unsigned long field;
	u8 b;

	if (!FUNC2(vmcs12))
		return true;

	/* Decode instruction info and find the field to access */
	vmx_instruction_info = FUNC3(VMX_INSTRUCTION_INFO);
	field = FUNC0(vcpu, (((vmx_instruction_info) >> 28) & 0xf));

	/* Out-of-range fields always cause a VM exit from L2 to L1 */
	if (field >> 15)
		return true;

	if (FUNC1(vcpu, bitmap + field/8, &b, 1))
		return true;

	return 1 & (b >> (field & 7));
}