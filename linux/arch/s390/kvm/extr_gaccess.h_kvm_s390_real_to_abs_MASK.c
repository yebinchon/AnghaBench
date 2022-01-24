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

/* Variables and functions */
 int PAGE_SIZE ; 
 unsigned long FUNC0 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline unsigned long FUNC1(struct kvm_vcpu *vcpu,
						 unsigned long gra)
{
	unsigned long prefix  = FUNC0(vcpu);

	if (gra < 2 * PAGE_SIZE)
		gra += prefix;
	else if (gra >= prefix && gra < prefix + 2 * PAGE_SIZE)
		gra -= prefix;
	return gra;
}