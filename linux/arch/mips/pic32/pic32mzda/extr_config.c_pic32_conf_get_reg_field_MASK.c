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
 int pic32_conf_base ; 
 int FUNC0 (int) ; 

__attribute__((used)) static u32 FUNC1(u32 offset, u32 rshift, u32 mask)
{
	u32 v;

	v = FUNC0(pic32_conf_base + offset);
	v >>= rshift;
	v &= mask;

	return v;
}