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
struct TYPE_2__ {struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct kvm_kpit_channel_state {int mode; int count; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PIT_FREQ ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int FUNC0 (struct kvm_pit*,struct kvm_kpit_channel_state*,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm_pit *pit, int channel)
{
	struct kvm_kpit_channel_state *c = &pit->pit_state.channels[channel];
	s64 d, t;
	int counter;

	t = FUNC0(pit, c, channel);
	d = FUNC2(t, KVM_PIT_FREQ, NSEC_PER_SEC);

	switch (c->mode) {
	case 0:
	case 1:
	case 4:
	case 5:
		counter = (c->count - d) & 0xffff;
		break;
	case 3:
		/* XXX: may be incorrect for odd counts */
		counter = c->count - (FUNC1((2 * d), c->count));
		break;
	default:
		counter = c->count - FUNC1(d, c->count);
		break;
	}
	return counter;
}