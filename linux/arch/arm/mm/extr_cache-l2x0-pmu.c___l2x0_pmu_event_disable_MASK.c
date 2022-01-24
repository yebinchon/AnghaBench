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
 int L2X0_EVENT_CNT_CFG_INT_DISABLED ; 
 int L2X0_EVENT_CNT_CFG_SRC_DISABLED ; 
 int L2X0_EVENT_CNT_CFG_SRC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(int idx)
{
	u32 val;

	val = L2X0_EVENT_CNT_CFG_SRC_DISABLED << L2X0_EVENT_CNT_CFG_SRC_SHIFT;
	val |= L2X0_EVENT_CNT_CFG_INT_DISABLED;
	FUNC0(idx, val);
}