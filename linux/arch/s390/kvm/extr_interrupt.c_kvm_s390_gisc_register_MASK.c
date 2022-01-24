#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_4__ {int* ref_count; int mask; int /*<<< orphan*/  ref_lock; } ;
struct kvm_s390_gisa_interrupt {TYPE_1__ alert; int /*<<< orphan*/  origin; } ;
struct TYPE_5__ {struct kvm_s390_gisa_interrupt gisa_int; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_6__ {int nisc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ERANGE ; 
 size_t MAX_ISC ; 
 TYPE_3__* gib ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct kvm *kvm, u32 gisc)
{
	struct kvm_s390_gisa_interrupt *gi = &kvm->arch.gisa_int;

	if (!gi->origin)
		return -ENODEV;
	if (gisc > MAX_ISC)
		return -ERANGE;

	FUNC1(&gi->alert.ref_lock);
	gi->alert.ref_count[gisc]++;
	if (gi->alert.ref_count[gisc] == 1) {
		gi->alert.mask |= 0x80 >> gisc;
		FUNC0(gi->origin, gi->alert.mask);
	}
	FUNC2(&gi->alert.ref_lock);

	return gib->nisc;
}