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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  ctxd_t ;

/* Variables and functions */
 int SRMMU_ET_PTD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(ctxd_t *ctxp, pgd_t *pgdp)
{
	pte_t pte;

	pte = FUNC1((SRMMU_ET_PTD | (FUNC0(pgdp) >> 4)));
	FUNC2((pte_t *)ctxp, pte);
}