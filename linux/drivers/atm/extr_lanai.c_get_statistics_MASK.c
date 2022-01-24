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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ovfl_trash; int /*<<< orphan*/  vci_trash; int /*<<< orphan*/  hec_err; int /*<<< orphan*/  atm_ovfl; } ;
struct lanai_dev {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Statistics_Reg ; 
 int /*<<< orphan*/  FUNC4 (struct lanai_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct lanai_dev *lanai)
{
	u32 statreg = FUNC4(lanai, Statistics_Reg);
	lanai->stats.atm_ovfl += FUNC2(statreg);
	lanai->stats.hec_err += FUNC3(statreg);
	lanai->stats.vci_trash += FUNC0(statreg);
	lanai->stats.ovfl_trash += FUNC1(statreg);
}