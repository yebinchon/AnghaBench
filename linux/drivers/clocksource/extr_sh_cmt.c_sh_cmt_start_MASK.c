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
struct sh_cmt_channel {unsigned long flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  max_match_value; } ;

/* Variables and functions */
 unsigned long FLAG_CLOCKEVENT ; 
 unsigned long FLAG_CLOCKSOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_cmt_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct sh_cmt_channel*) ; 

__attribute__((used)) static int FUNC4(struct sh_cmt_channel *ch, unsigned long flag)
{
	int ret = 0;
	unsigned long flags;

	FUNC1(&ch->lock, flags);

	if (!(ch->flags & (FLAG_CLOCKEVENT | FLAG_CLOCKSOURCE)))
		ret = FUNC3(ch);

	if (ret)
		goto out;
	ch->flags |= flag;

	/* setup timeout if no clockevent */
	if ((flag == FLAG_CLOCKSOURCE) && (!(ch->flags & FLAG_CLOCKEVENT)))
		FUNC0(ch, ch->max_match_value);
 out:
	FUNC2(&ch->lock, flags);

	return ret;
}