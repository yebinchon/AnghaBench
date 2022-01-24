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
struct sh_tmu_channel {int periodic; TYPE_1__* tmu; } ;
struct TYPE_2__ {int rate; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sh_tmu_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_tmu_channel*,int,int) ; 

__attribute__((used)) static void FUNC2(struct sh_tmu_channel *ch, int periodic)
{
	FUNC0(ch);

	if (periodic) {
		ch->periodic = (ch->tmu->rate + HZ/2) / HZ;
		FUNC1(ch, ch->periodic, 1);
	}
}