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
typedef  unsigned long u64 ;
struct clk_pllv3_vf610_mf {unsigned long mfn; unsigned long mfi; int /*<<< orphan*/  mfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(unsigned long parent_rate,
		struct clk_pllv3_vf610_mf mf)
{
	u64 temp64;

	temp64 = parent_rate;
	temp64 *= mf.mfn;
	FUNC0(temp64, mf.mfd);

	return (parent_rate * mf.mfi) + temp64;
}