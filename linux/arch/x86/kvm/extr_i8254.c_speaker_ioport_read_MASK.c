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
struct kvm_kpit_state {int speaker_data_on; int /*<<< orphan*/  lock; } ;
struct kvm_pit {struct kvm_kpit_state pit_state; } ;
struct kvm_io_device {int dummy; } ;
typedef  int /*<<< orphan*/  ret ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ KVM_SPEAKER_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct kvm_pit*,int) ; 
 int FUNC6 (struct kvm_pit*,int) ; 
 struct kvm_pit* FUNC7 (struct kvm_io_device*) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu,
				   struct kvm_io_device *this,
				   gpa_t addr, int len, void *data)
{
	struct kvm_pit *pit = FUNC7(this);
	struct kvm_kpit_state *pit_state = &pit->pit_state;
	unsigned int refresh_clock;
	int ret;
	if (addr != KVM_SPEAKER_BASE_ADDRESS)
		return -EOPNOTSUPP;

	/* Refresh clock toggles at about 15us. We approximate as 2^14ns. */
	refresh_clock = ((unsigned int)FUNC1(FUNC0()) >> 14) & 1;

	FUNC3(&pit_state->lock);
	ret = ((pit_state->speaker_data_on << 1) | FUNC5(pit, 2) |
		(FUNC6(pit, 2) << 5) | (refresh_clock << 4));
	if (len > sizeof(ret))
		len = sizeof(ret);
	FUNC2(data, (char *)&ret, len);
	FUNC4(&pit_state->lock);
	return 0;
}