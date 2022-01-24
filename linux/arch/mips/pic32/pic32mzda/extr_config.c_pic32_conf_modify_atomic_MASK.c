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

/* Variables and functions */
 int /*<<< orphan*/  config_lock ; 
 int pic32_conf_base ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static u32 FUNC4(u32 offset, u32 mask, u32 set)
{
	u32 v;
	unsigned long flags;

	FUNC1(&config_lock, flags);
	v = FUNC0(pic32_conf_base + offset);
	v &= ~mask;
	v |= (set & mask);
	FUNC3(v, pic32_conf_base + offset);
	FUNC2(&config_lock, flags);

	return 0;
}