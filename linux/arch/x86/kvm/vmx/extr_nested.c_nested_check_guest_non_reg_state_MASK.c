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
struct vmcs12 {scalar_t__ guest_activity_state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ GUEST_ACTIVITY_ACTIVE ; 
 scalar_t__ GUEST_ACTIVITY_HLT ; 

__attribute__((used)) static int FUNC1(struct vmcs12 *vmcs12)
{
	if (FUNC0(vmcs12->guest_activity_state != GUEST_ACTIVITY_ACTIVE &&
	       vmcs12->guest_activity_state != GUEST_ACTIVITY_HLT))
		return -EINVAL;

	return 0;
}