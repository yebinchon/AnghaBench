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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {TYPE_2__* channels; int /*<<< orphan*/  lock; } ;
struct kvm_pit {TYPE_1__ pit_state; } ;
struct TYPE_4__ {int mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_pit*,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct kvm_pit *pit, int channel, u32 val,
		int hpet_legacy_start)
{
	u8 saved_mode;

	FUNC1(!FUNC2(&pit->pit_state.lock));

	if (hpet_legacy_start) {
		/* save existing mode for later reenablement */
		FUNC0(channel != 0);
		saved_mode = pit->pit_state.channels[0].mode;
		pit->pit_state.channels[0].mode = 0xff; /* disable timer */
		FUNC3(pit, channel, val);
		pit->pit_state.channels[0].mode = saved_mode;
	} else {
		FUNC3(pit, channel, val);
	}
}