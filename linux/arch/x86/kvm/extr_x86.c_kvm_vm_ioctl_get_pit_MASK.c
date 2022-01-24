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
struct kvm_pit_state {int dummy; } ;
struct kvm_kpit_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  channels; } ;
struct TYPE_4__ {TYPE_1__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {struct kvm_kpit_state pit_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pit_state*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, struct kvm_pit_state *ps)
{
	struct kvm_kpit_state *kps = &kvm->arch.vpit->pit_state;

	FUNC0(sizeof(*ps) != sizeof(kps->channels));

	FUNC2(&kps->lock);
	FUNC1(ps, &kps->channels, sizeof(*ps));
	FUNC3(&kps->lock);
	return 0;
}