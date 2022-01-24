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
struct kvm_segment {int /*<<< orphan*/  limit; int /*<<< orphan*/  base; int /*<<< orphan*/  selector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_segment*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct kvm_segment*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, char *buf, int n)
{
	struct kvm_segment seg;
	int offset;

	FUNC1(vcpu, &seg, n);
	FUNC2(u32, buf, 0x7fa8 + n * 4, seg.selector);

	if (n < 3)
		offset = 0x7f84 + n * 12;
	else
		offset = 0x7f2c + (n - 3) * 12;

	FUNC2(u32, buf, offset + 8, seg.base);
	FUNC2(u32, buf, offset + 4, seg.limit);
	FUNC2(u32, buf, offset, FUNC0(&seg));
}