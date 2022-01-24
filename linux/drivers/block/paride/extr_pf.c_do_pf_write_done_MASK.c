#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 scalar_t__ PF_MAX_RETRIES ; 
 int /*<<< orphan*/  STAT_BUSY ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  do_pf_write_start ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pf_current ; 
 scalar_t__ pf_retries ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if (FUNC1(pf_current, STAT_BUSY, 0, "write block", "done") & STAT_ERR) {
		FUNC2(pf_current->pi);
		if (pf_retries < PF_MAX_RETRIES) {
			pf_retries++;
			FUNC3(pf_current->pi, do_pf_write_start);
			return;
		}
		FUNC0(BLK_STS_IOERR);
		return;
	}
	FUNC2(pf_current->pi);
	FUNC0(0);
}