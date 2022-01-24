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
struct sh_mtu2_channel {int index; TYPE_1__* mtu; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (struct sh_mtu2_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mtu2_channel*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct sh_mtu2_channel *ch, int start)
{
	unsigned long flags, value;

	/* start stop register shared by multiple timer channels */
	FUNC0(&ch->mtu->lock, flags);
	value = FUNC2(ch, TSTR);

	if (start)
		value |= 1 << ch->index;
	else
		value &= ~(1 << ch->index);

	FUNC3(ch, TSTR, value);
	FUNC1(&ch->mtu->lock, flags);
}