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
struct tegra210_domain_mbist_war {int lvl2_mask; scalar_t__ lvl2_offset; } ;

/* Variables and functions */
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct tegra210_domain_mbist_war *mbist)
{
	u32 val;

	val = FUNC1(clk_base + mbist->lvl2_offset);
	FUNC2(val | mbist->lvl2_mask, clk_base + mbist->lvl2_offset);
	FUNC0(1, clk_base);
	FUNC2(val, clk_base + mbist->lvl2_offset);
	FUNC0(1, clk_base);
}