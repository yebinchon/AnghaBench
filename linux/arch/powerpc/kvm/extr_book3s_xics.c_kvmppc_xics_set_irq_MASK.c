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
typedef  int /*<<< orphan*/  u32 ;
struct kvmppc_xics {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct kvmppc_xics*,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct kvm *kvm, int irq_source_id, u32 irq, int level,
			bool line_status)
{
	struct kvmppc_xics *xics = kvm->arch.xics;

	if (!xics)
		return -ENODEV;
	return FUNC0(xics, irq, level);
}