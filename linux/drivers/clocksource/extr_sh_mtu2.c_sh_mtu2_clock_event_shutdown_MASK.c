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
struct sh_mtu2_channel {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 struct sh_mtu2_channel* FUNC0 (struct clock_event_device*) ; 
 scalar_t__ FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mtu2_channel*) ; 

__attribute__((used)) static int FUNC3(struct clock_event_device *ced)
{
	struct sh_mtu2_channel *ch = FUNC0(ced);

	if (FUNC1(ced))
		FUNC2(ch);

	return 0;
}