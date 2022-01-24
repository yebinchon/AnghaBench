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
struct TYPE_2__ {int /*<<< orphan*/  m32_segmap; int /*<<< orphan*/  m64_segmap; int /*<<< orphan*/  io_segmap; } ;
struct pnv_phb {scalar_t__ type; TYPE_1__ ioda; } ;
struct pnv_ioda_pe {struct pnv_phb* phb; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_IO_WINDOW_TYPE ; 
 int /*<<< orphan*/  OPAL_M32_WINDOW_TYPE ; 
 int /*<<< orphan*/  OPAL_M64_WINDOW_TYPE ; 
 scalar_t__ PNV_PHB_IODA1 ; 
 scalar_t__ PNV_PHB_IODA2 ; 
 int /*<<< orphan*/  FUNC0 (struct pnv_ioda_pe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pnv_ioda_pe *pe)
{
	struct pnv_phb *phb = pe->phb;

	if (phb->type == PNV_PHB_IODA1) {
		FUNC0(pe, OPAL_IO_WINDOW_TYPE,
				     phb->ioda.io_segmap);
		FUNC0(pe, OPAL_M32_WINDOW_TYPE,
				     phb->ioda.m32_segmap);
		FUNC0(pe, OPAL_M64_WINDOW_TYPE,
				     phb->ioda.m64_segmap);
	} else if (phb->type == PNV_PHB_IODA2) {
		FUNC0(pe, OPAL_M32_WINDOW_TYPE,
				     phb->ioda.m32_segmap);
	}
}