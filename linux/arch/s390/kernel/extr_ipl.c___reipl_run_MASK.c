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

/* Variables and functions */
 int /*<<< orphan*/  DIAG308_LOAD_CLEAR ; 
 int /*<<< orphan*/  DIAG308_SET ; 
#define  IPL_TYPE_CCW 132 
#define  IPL_TYPE_FCP 131 
#define  IPL_TYPE_FCP_DUMP 130 
#define  IPL_TYPE_NSS 129 
#define  IPL_TYPE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * reipl_block_ccw ; 
 int /*<<< orphan*/ * reipl_block_fcp ; 
 int /*<<< orphan*/ * reipl_block_nss ; 
 int reipl_type ; 

__attribute__((used)) static void FUNC2(void *unused)
{
	switch (reipl_type) {
	case IPL_TYPE_CCW:
		FUNC0(DIAG308_SET, reipl_block_ccw);
		FUNC0(DIAG308_LOAD_CLEAR, NULL);
		break;
	case IPL_TYPE_FCP:
		FUNC0(DIAG308_SET, reipl_block_fcp);
		FUNC0(DIAG308_LOAD_CLEAR, NULL);
		break;
	case IPL_TYPE_NSS:
		FUNC0(DIAG308_SET, reipl_block_nss);
		FUNC0(DIAG308_LOAD_CLEAR, NULL);
		break;
	case IPL_TYPE_UNKNOWN:
		FUNC0(DIAG308_LOAD_CLEAR, NULL);
		break;
	case IPL_TYPE_FCP_DUMP:
		break;
	}
	FUNC1();
}