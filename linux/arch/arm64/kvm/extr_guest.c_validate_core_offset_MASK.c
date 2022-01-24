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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_one_reg {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct kvm_vcpu *vcpu,
				const struct kvm_one_reg *reg)
{
	u64 off = FUNC1(reg->id);
	int size = FUNC2(vcpu, off);

	if (size < 0)
		return -EINVAL;

	if (FUNC0(reg->id) != size)
		return -EINVAL;

	return 0;
}