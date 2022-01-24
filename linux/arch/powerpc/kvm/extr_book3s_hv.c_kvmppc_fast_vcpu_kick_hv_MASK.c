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
struct swait_queue_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  thread_cpu; } ;
struct TYPE_3__ {int /*<<< orphan*/  halt_wakeup; } ;
struct kvm_vcpu {int cpu; TYPE_2__ arch; TYPE_1__ stat; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct swait_queue_head* FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (int) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct swait_queue_head*) ; 
 scalar_t__ FUNC6 (struct swait_queue_head*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	int cpu;
	struct swait_queue_head *wqp;

	wqp = FUNC2(vcpu);
	if (FUNC6(wqp)) {
		FUNC5(wqp);
		++vcpu->stat.halt_wakeup;
	}

	cpu = FUNC0(vcpu->arch.thread_cpu);
	if (cpu >= 0 && FUNC3(cpu))
		return;

	/* CPU points to the first thread of the core */
	cpu = vcpu->cpu;
	if (cpu >= 0 && cpu < nr_cpu_ids && FUNC1(cpu))
		FUNC4(cpu);
}