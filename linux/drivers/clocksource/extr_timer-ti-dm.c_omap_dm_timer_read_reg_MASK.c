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
typedef  int u32 ;
struct omap_dm_timer {int /*<<< orphan*/  posted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _OMAP_TIMER_WAKEUP_EN_OFFSET ; 
 int FUNC1 (struct omap_dm_timer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(struct omap_dm_timer *timer, u32 reg)
{
	FUNC0((reg & 0xff) < _OMAP_TIMER_WAKEUP_EN_OFFSET);
	return FUNC1(timer, reg, timer->posted);
}