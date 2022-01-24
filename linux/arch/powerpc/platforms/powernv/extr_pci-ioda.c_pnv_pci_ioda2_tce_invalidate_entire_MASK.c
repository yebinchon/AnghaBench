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
struct pnv_phb {scalar_t__ model; int /*<<< orphan*/  opal_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_PCI_TCE_KILL ; 
 scalar_t__ PNV_PHB_MODEL_NPU ; 
 scalar_t__ PNV_PHB_MODEL_PHB3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pnv_phb*,int) ; 

void FUNC2(struct pnv_phb *phb, bool rm)
{
	if (phb->model == PNV_PHB_MODEL_NPU || phb->model == PNV_PHB_MODEL_PHB3)
		FUNC1(phb, rm);
	else
		FUNC0(phb->opal_id, OPAL_PCI_TCE_KILL, 0, 0, 0, 0);
}