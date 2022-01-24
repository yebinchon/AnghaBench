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
struct TYPE_2__ {int /*<<< orphan*/ ** gfn_track; } ;
struct kvm_memory_slot {TYPE_1__ arch; } ;

/* Variables and functions */
 int KVM_PAGE_TRACK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct kvm_memory_slot *free,
				 struct kvm_memory_slot *dont)
{
	int i;

	for (i = 0; i < KVM_PAGE_TRACK_MAX; i++)
		if (!dont || free->arch.gfn_track[i] !=
		      dont->arch.gfn_track[i]) {
			FUNC0(free->arch.gfn_track[i]);
			free->arch.gfn_track[i] = NULL;
		}
}