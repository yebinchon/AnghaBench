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
struct sh_mtu2_channel {scalar_t__ base; TYPE_1__* mtu; } ;
struct TYPE_2__ {scalar_t__ mapbase; } ;

/* Variables and functions */
 int TCNT ; 
 int TGR ; 
 int TSTR ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long* mtu2_reg_offs ; 

__attribute__((used)) static inline unsigned long FUNC2(struct sh_mtu2_channel *ch, int reg_nr)
{
	unsigned long offs;

	if (reg_nr == TSTR)
		return FUNC1(ch->mtu->mapbase + 0x280);

	offs = mtu2_reg_offs[reg_nr];

	if ((reg_nr == TCNT) || (reg_nr == TGR))
		return FUNC0(ch->base + offs);
	else
		return FUNC1(ch->base + offs);
}