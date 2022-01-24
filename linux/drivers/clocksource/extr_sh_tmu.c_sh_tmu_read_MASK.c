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
struct sh_tmu_channel {scalar_t__ base; TYPE_1__* tmu; } ;
struct TYPE_2__ {int model; int /*<<< orphan*/  mapbase; } ;

/* Variables and functions */
#define  SH_TMU 129 
#define  SH_TMU_SH3 128 
 int TCR ; 
 int TSTR ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC3(struct sh_tmu_channel *ch, int reg_nr)
{
	unsigned long offs;

	if (reg_nr == TSTR) {
		switch (ch->tmu->model) {
		case SH_TMU_SH3:
			return FUNC2(ch->tmu->mapbase + 2);
		case SH_TMU:
			return FUNC2(ch->tmu->mapbase + 4);
		}
	}

	offs = reg_nr << 2;

	if (reg_nr == TCR)
		return FUNC0(ch->base + offs);
	else
		return FUNC1(ch->base + offs);
}