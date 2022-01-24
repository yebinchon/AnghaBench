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
struct mt7620_gsw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt7620_gsw*,int,int,int) ; 

void FUNC1(struct mt7620_gsw *gsw, u32 reg, u32 val)
{
	FUNC0(gsw, 0x1f, 0x1f, (reg >> 6) & 0x3ff);
	FUNC0(gsw, 0x1f, (reg >> 2) & 0xf,  val & 0xffff);
	FUNC0(gsw, 0x1f, 0x10, val >> 16);
}