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
struct TYPE_3__ {int guest_can_read_msr_platform_info; int /*<<< orphan*/  kvmclock_sync_work; int /*<<< orphan*/  kvmclock_update_work; int /*<<< orphan*/  kvmclock_offset; int /*<<< orphan*/  pvclock_gtod_sync_lock; int /*<<< orphan*/  apic_map_lock; int /*<<< orphan*/  tsc_write_lock; int /*<<< orphan*/  irq_sources_bitmap; int /*<<< orphan*/  noncoherent_dma_count; int /*<<< orphan*/  assigned_dev_head; int /*<<< orphan*/  lpage_disallowed_mmu_pages; int /*<<< orphan*/  zapped_obsolete_pages; int /*<<< orphan*/  active_mmu_pages; int /*<<< orphan*/  mask_notifier_list; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* vm_init ) (struct kvm*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KVM_IRQFD_RESAMPLE_IRQ_SOURCE_ID ; 
 int /*<<< orphan*/  KVM_USERSPACE_IRQ_SOURCE_ID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  kvmclock_sync_fn ; 
 int /*<<< orphan*/  kvmclock_update_fn ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct kvm*) ; 

int FUNC14(struct kvm *kvm, unsigned long type)
{
	if (type)
		return -EINVAL;

	FUNC1(&kvm->arch.mask_notifier_list);
	FUNC2(&kvm->arch.active_mmu_pages);
	FUNC2(&kvm->arch.zapped_obsolete_pages);
	FUNC2(&kvm->arch.lpage_disallowed_mmu_pages);
	FUNC2(&kvm->arch.assigned_dev_head);
	FUNC3(&kvm->arch.noncoherent_dma_count, 0);

	/* Reserve bit 0 of irq_sources_bitmap for userspace irq source */
	FUNC11(KVM_USERSPACE_IRQ_SOURCE_ID, &kvm->arch.irq_sources_bitmap);
	/* Reserve bit 1 of irq_sources_bitmap for irqfd-resampler */
	FUNC11(KVM_IRQFD_RESAMPLE_IRQ_SOURCE_ID,
		&kvm->arch.irq_sources_bitmap);

	FUNC10(&kvm->arch.tsc_write_lock);
	FUNC8(&kvm->arch.apic_map_lock);
	FUNC12(&kvm->arch.pvclock_gtod_sync_lock);

	kvm->arch.kvmclock_offset = -FUNC4();
	FUNC9(kvm);

	kvm->arch.guest_can_read_msr_platform_info = true;

	FUNC0(&kvm->arch.kvmclock_update_work, kvmclock_update_fn);
	FUNC0(&kvm->arch.kvmclock_sync_work, kvmclock_sync_fn);

	FUNC5(kvm);
	FUNC7(kvm);
	FUNC6(kvm);

	return kvm_x86_ops->vm_init(kvm);
}