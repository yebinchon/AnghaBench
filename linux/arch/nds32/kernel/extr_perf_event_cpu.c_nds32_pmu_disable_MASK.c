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
struct pmu {int dummy; } ;
struct nds32_pmu {int /*<<< orphan*/  (* stop ) (struct nds32_pmu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nds32_pmu*) ; 
 struct nds32_pmu* FUNC1 (struct pmu*) ; 

__attribute__((used)) static void FUNC2(struct pmu *pmu)
{
	struct nds32_pmu *nds32_pmu = FUNC1(pmu);

	nds32_pmu->stop(nds32_pmu);
}