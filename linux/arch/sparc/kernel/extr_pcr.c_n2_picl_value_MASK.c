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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {unsigned int clock_tick; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 () ; 

__attribute__((used)) static u64 FUNC1(unsigned int nmi_hz)
{
	u32 delta = FUNC0().clock_tick / (nmi_hz << 2);

	return ((u64)((0 - delta) & 0xffffffff)) << 32;
}