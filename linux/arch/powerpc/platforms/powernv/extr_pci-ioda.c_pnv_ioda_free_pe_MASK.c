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
struct TYPE_2__ {int /*<<< orphan*/  pe_alloc; } ;
struct pnv_phb {TYPE_1__ ioda; } ;
struct pnv_ioda_pe {unsigned int pe_number; int /*<<< orphan*/  npucomp; int /*<<< orphan*/  pdev; struct pnv_phb* phb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnv_ioda_pe*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct pnv_ioda_pe *pe)
{
	struct pnv_phb *phb = pe->phb;
	unsigned int pe_num = pe->pe_number;

	FUNC0(pe->pdev);
	FUNC0(pe->npucomp); /* NPUs are not supposed to be freed */
	FUNC2(pe->npucomp);
	FUNC3(pe, 0, sizeof(struct pnv_ioda_pe));
	FUNC1(pe_num, phb->ioda.pe_alloc);
}