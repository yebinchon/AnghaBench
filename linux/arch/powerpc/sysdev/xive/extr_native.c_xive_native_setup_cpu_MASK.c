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
typedef  scalar_t__ u32 ;
struct xive_cpu {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ OPAL_BUSY ; 
 int /*<<< orphan*/  OPAL_BUSY_DELAY_MS ; 
 int /*<<< orphan*/  OPAL_XIVE_VP_ENABLED ; 
 int TM_QW2W2_VP ; 
 scalar_t__ TM_QW2_HV_POOL ; 
 scalar_t__ TM_SPC_PULL_POOL_CTX ; 
 scalar_t__ TM_WORD0 ; 
 scalar_t__ TM_WORD2 ; 
 scalar_t__ XIVE_INVALID_VP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 scalar_t__ xive_pool_vps ; 
 scalar_t__ xive_tima ; 

__attribute__((used)) static void FUNC8(unsigned int cpu, struct xive_cpu *xc)
{
	s64 rc;
	u32 vp;
	__be64 vp_cam_be;
	u64 vp_cam;

	if (xive_pool_vps == XIVE_INVALID_VP)
		return;

	/* Check if pool VP already active, if it is, pull it */
	if (FUNC1(xive_tima + TM_QW2_HV_POOL + TM_WORD2) & TM_QW2W2_VP)
		FUNC2(xive_tima + TM_SPC_PULL_POOL_CTX);

	/* Enable the pool VP */
	vp = xive_pool_vps + cpu;
	for (;;) {
		rc = FUNC5(vp, OPAL_XIVE_VP_ENABLED, 0);
		if (rc != OPAL_BUSY)
			break;
		FUNC3(OPAL_BUSY_DELAY_MS);
	}
	if (rc) {
		FUNC7("Failed to enable pool VP on CPU %d\n", cpu);
		return;
	}

	/* Grab it's CAM value */
	rc = FUNC4(vp, NULL, &vp_cam_be, NULL, NULL);
	if (rc) {
		FUNC7("Failed to get pool VP info CPU %d\n", cpu);
		return;
	}
	vp_cam = FUNC0(vp_cam_be);

	/* Push it on the CPU (set LSMFB to 0xff to skip backlog scan) */
	FUNC6(xive_tima + TM_QW2_HV_POOL + TM_WORD0, 0xff);
	FUNC6(xive_tima + TM_QW2_HV_POOL + TM_WORD2, TM_QW2W2_VP | vp_cam);
}