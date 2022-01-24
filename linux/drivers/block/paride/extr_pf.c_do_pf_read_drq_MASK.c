#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 scalar_t__ PF_MAX_RETRIES ; 
 int /*<<< orphan*/  STAT_BUSY ; 
 int STAT_DRQ ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  do_pf_read_start ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_buf ; 
 TYPE_1__* pf_current ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ pf_retries ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	while (1) {
		if (FUNC3(pf_current, STAT_BUSY, STAT_DRQ | STAT_ERR,
			    "read block", "completion") & STAT_ERR) {
			FUNC4(pf_current->pi);
			if (pf_retries < PF_MAX_RETRIES) {
				FUNC2(pf_current, 0);
				pf_retries++;
				FUNC5(pf_current->pi, do_pf_read_start);
				return;
			}
			FUNC0(BLK_STS_IOERR);
			return;
		}
		FUNC6(pf_current->pi, pf_buf, 512);
		if (FUNC1())
			break;
	}
	FUNC4(pf_current->pi);
	FUNC0(0);
}