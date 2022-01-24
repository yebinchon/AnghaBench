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
typedef  int /*<<< orphan*/  gva_t ;

/* Variables and functions */
 long FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,long) ; 

long FUNC2(struct kvm_vcpu *vcpu, gva_t eaddr, void *to,
				 unsigned long n)
{
	long ret;

	ret = FUNC0(vcpu, eaddr, to, NULL, n);
	if (ret > 0)
		FUNC1(to + (n - ret), 0, ret);

	return ret;
}