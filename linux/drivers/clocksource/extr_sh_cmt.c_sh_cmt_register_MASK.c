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
struct sh_cmt_channel {TYPE_1__* cmt; } ;
struct TYPE_2__ {int has_clockevent; int has_clocksource; } ;

/* Variables and functions */
 int FUNC0 (struct sh_cmt_channel*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_cmt_channel*,char const*) ; 

__attribute__((used)) static int FUNC2(struct sh_cmt_channel *ch, const char *name,
			   bool clockevent, bool clocksource)
{
	int ret;

	if (clockevent) {
		ch->cmt->has_clockevent = true;
		ret = FUNC0(ch, name);
		if (ret < 0)
			return ret;
	}

	if (clocksource) {
		ch->cmt->has_clocksource = true;
		FUNC1(ch, name);
	}

	return 0;
}