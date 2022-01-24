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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BPAR ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static u32 FUNC2(u32 reg, u32 parent_rate)
{
	u32 sel, integ, fra_div, tmp;
	u64 tmp64 = (u64)parent_rate * BPAR;

	tmp = reg;
	sel = (tmp >> 24) & FUNC0(0);
	integ = (tmp >> 16) & 0xff;
	fra_div = tmp & 0xff;

	tmp = fra_div * BPAR;
	tmp = tmp / 0xff;
	tmp += sel * BPAR;
	tmp += 2 * integ * BPAR;
	FUNC1(tmp64, tmp);

	return (u32)tmp64;
}