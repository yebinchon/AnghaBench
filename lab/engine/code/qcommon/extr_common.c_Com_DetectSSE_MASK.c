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
typedef  int cpuFeatures_t ;

/* Variables and functions */
 int CF_SSE ; 
 int CF_SSE2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  Q_SnapVector ; 
 int /*<<< orphan*/  Q_VMftol ; 
 int /*<<< orphan*/  Q_ftol ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  qftolsse ; 
 int /*<<< orphan*/  qftolx87 ; 
 int /*<<< orphan*/  qsnapvectorsse ; 
 int /*<<< orphan*/  qsnapvectorx87 ; 
 int /*<<< orphan*/  qvmftolsse ; 
 int /*<<< orphan*/  qvmftolx87 ; 

__attribute__((used)) static void FUNC2(void)
{
#if !idx64
	cpuFeatures_t feat;
	
	feat = FUNC1();

	if(feat & CF_SSE)
	{
		if(feat & CF_SSE2)
			Q_SnapVector = qsnapvectorsse;
		else
			Q_SnapVector = qsnapvectorx87;

		Q_ftol = qftolsse;
#endif
		Q_VMftol = qvmftolsse;

		FUNC0("SSE instruction set enabled\n");
#if !idx64
	}
	else
	{
		Q_ftol = qftolx87;
		Q_VMftol = qvmftolx87;
		Q_SnapVector = qsnapvectorx87;

		FUNC0("SSE instruction set not available\n");
	}
#endif
}