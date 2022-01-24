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
struct kvm_vcpu {int dummy; } ;
typedef  unsigned long gpa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_MASK ; 
 unsigned long X86_CR3_PCID_MASK ; 
 int /*<<< orphan*/  X86_CR4_PCIDE ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC2(struct kvm_vcpu *vcpu, gpa_t cr3)
{
	FUNC0((X86_CR3_PCID_MASK & PAGE_MASK) != 0);

	return FUNC1(vcpu, X86_CR4_PCIDE)
	       ? cr3 & X86_CR3_PCID_MASK
	       : 0;
}