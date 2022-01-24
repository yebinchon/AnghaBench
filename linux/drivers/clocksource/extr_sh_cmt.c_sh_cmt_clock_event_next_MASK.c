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
struct sh_cmt_channel {int flags; unsigned long next_match_value; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAG_IRQCONTEXT ; 
 struct sh_cmt_channel* FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_cmt_channel*,unsigned long) ; 

__attribute__((used)) static int FUNC5(unsigned long delta,
				   struct clock_event_device *ced)
{
	struct sh_cmt_channel *ch = FUNC1(ced);

	FUNC0(!FUNC2(ced));
	if (FUNC3(ch->flags & FLAG_IRQCONTEXT))
		ch->next_match_value = delta - 1;
	else
		FUNC4(ch, delta - 1);

	return 0;
}