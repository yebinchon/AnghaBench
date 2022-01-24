#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvm_pic_state {int dummy; } ;
struct kvm_pic {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pics; } ;
struct TYPE_4__ {int /*<<< orphan*/  ioapic; int /*<<< orphan*/  pic; } ;
struct kvm_irqchip {int chip_id; TYPE_2__ chip; } ;
struct TYPE_3__ {struct kvm_pic* vpic; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
#define  KVM_IRQCHIP_IOAPIC 130 
#define  KVM_IRQCHIP_PIC_MASTER 129 
#define  KVM_IRQCHIP_PIC_SLAVE 128 
 int /*<<< orphan*/  FUNC0 (struct kvm_pic*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, struct kvm_irqchip *chip)
{
	struct kvm_pic *pic = kvm->arch.vpic;
	int r;

	r = 0;
	switch (chip->chip_id) {
	case KVM_IRQCHIP_PIC_MASTER:
		FUNC3(&pic->lock);
		FUNC2(&pic->pics[0], &chip->chip.pic,
			sizeof(struct kvm_pic_state));
		FUNC4(&pic->lock);
		break;
	case KVM_IRQCHIP_PIC_SLAVE:
		FUNC3(&pic->lock);
		FUNC2(&pic->pics[1], &chip->chip.pic,
			sizeof(struct kvm_pic_state));
		FUNC4(&pic->lock);
		break;
	case KVM_IRQCHIP_IOAPIC:
		FUNC1(kvm, &chip->chip.ioapic);
		break;
	default:
		r = -EINVAL;
		break;
	}
	FUNC0(pic);
	return r;
}