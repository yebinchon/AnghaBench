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
struct kvmppc_vpa {int /*<<< orphan*/  dirty; int /*<<< orphan*/  gpa; scalar_t__ pinned_addr; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct kvm *kvm, struct kvmppc_vpa *vpa)
{
	if (vpa->pinned_addr)
		FUNC0(kvm, vpa->pinned_addr, vpa->gpa,
					vpa->dirty);
}