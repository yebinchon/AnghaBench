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
struct hw_perf_event {int config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PMCR_PMCLR ; 
 int PMCR_PMEN ; 
 int PMCR_PMST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hw_perf_event *hwc, int idx)
{
	FUNC2(FUNC1(FUNC0(idx)) | PMCR_PMCLR, FUNC0(idx));
	FUNC2(hwc->config | PMCR_PMEN | PMCR_PMST, FUNC0(idx));
}