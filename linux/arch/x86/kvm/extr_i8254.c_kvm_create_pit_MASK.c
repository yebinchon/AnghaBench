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
typedef  int u32 ;
struct pid {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq_acked; scalar_t__ gsi; } ;
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
struct kvm_kpit_state {TYPE_1__ irq_ack_notifier; TYPE_3__ timer; int /*<<< orphan*/  lock; } ;
struct kvm_pit {scalar_t__ irq_source_id; int /*<<< orphan*/  worker; int /*<<< orphan*/  dev; int /*<<< orphan*/  speaker_dev; TYPE_2__ mask_notifier; struct kvm_kpit_state pit_state; struct kvm* kvm; int /*<<< orphan*/  expired; } ;
struct kvm {int /*<<< orphan*/  slots_lock; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int /*<<< orphan*/  KVM_PIT_BASE_ADDRESS ; 
 int KVM_PIT_MEM_LENGTH ; 
 int KVM_PIT_SPEAKER_DUMMY ; 
 int /*<<< orphan*/  KVM_SPEAKER_BASE_ADDRESS ; 
 int /*<<< orphan*/  current ; 
 struct pid* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_pit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,scalar_t__) ; 
 int FUNC8 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kvm_pit_ack_irq ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_pit*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_pit*,int) ; 
 scalar_t__ FUNC13 (struct kvm*) ; 
 struct kvm_pit* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct pid*) ; 
 int /*<<< orphan*/  pit_dev_ops ; 
 int /*<<< orphan*/  pit_do_work ; 
 int /*<<< orphan*/  pit_mask_notifer ; 
 int /*<<< orphan*/  pit_timer_fn ; 
 int /*<<< orphan*/  FUNC19 (struct pid*) ; 
 int /*<<< orphan*/  speaker_dev_ops ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

struct kvm_pit *FUNC21(struct kvm *kvm, u32 flags)
{
	struct kvm_pit *pit;
	struct kvm_kpit_state *pit_state;
	struct pid *pid;
	pid_t pid_nr;
	int ret;

	pit = FUNC14(sizeof(struct kvm_pit), GFP_KERNEL_ACCOUNT);
	if (!pit)
		return NULL;

	pit->irq_source_id = FUNC13(kvm);
	if (pit->irq_source_id < 0)
		goto fail_request;

	FUNC15(&pit->pit_state.lock);

	pid = FUNC1(FUNC20(current));
	pid_nr = FUNC18(pid);
	FUNC19(pid);

	pit->worker = FUNC4(0, "kvm-pit/%d", pid_nr);
	if (FUNC0(pit->worker))
		goto fail_kthread;

	FUNC6(&pit->expired, pit_do_work);

	pit->kvm = kvm;

	pit_state = &pit->pit_state;
	FUNC2(&pit_state->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	pit_state->timer.function = pit_timer_fn;

	pit_state->irq_ack_notifier.gsi = 0;
	pit_state->irq_ack_notifier.irq_acked = kvm_pit_ack_irq;
	pit->mask_notifier.func = pit_mask_notifer;

	FUNC11(pit);

	FUNC12(pit, true);

	FUNC16(&kvm->slots_lock);
	FUNC10(&pit->dev, &pit_dev_ops);
	ret = FUNC8(kvm, KVM_PIO_BUS, KVM_PIT_BASE_ADDRESS,
				      KVM_PIT_MEM_LENGTH, &pit->dev);
	if (ret < 0)
		goto fail_register_pit;

	if (flags & KVM_PIT_SPEAKER_DUMMY) {
		FUNC10(&pit->speaker_dev, &speaker_dev_ops);
		ret = FUNC8(kvm, KVM_PIO_BUS,
					      KVM_SPEAKER_BASE_ADDRESS, 4,
					      &pit->speaker_dev);
		if (ret < 0)
			goto fail_register_speaker;
	}
	FUNC17(&kvm->slots_lock);

	return pit;

fail_register_speaker:
	FUNC9(kvm, KVM_PIO_BUS, &pit->dev);
fail_register_pit:
	FUNC17(&kvm->slots_lock);
	FUNC12(pit, false);
	FUNC5(pit->worker);
fail_kthread:
	FUNC7(kvm, pit->irq_source_id);
fail_request:
	FUNC3(pit);
	return NULL;
}