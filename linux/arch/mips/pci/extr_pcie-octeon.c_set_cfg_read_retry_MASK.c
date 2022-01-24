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
struct TYPE_2__ {int /*<<< orphan*/  cfg_rtry; } ;
union cvmx_pemx_ctl_status {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	void FUNC3(u32 retry_cnt)
{
	union cvmx_pemx_ctl_status pemx_ctl;
	pemx_ctl.u64 = FUNC1(FUNC0(1));
	pemx_ctl.s.cfg_rtry = retry_cnt;
	FUNC2(FUNC0(1), pemx_ctl.u64);
}