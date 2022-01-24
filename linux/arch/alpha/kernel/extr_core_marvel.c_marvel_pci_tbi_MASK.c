#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_controller {scalar_t__ sysdata; } ;
struct io7_port {TYPE_2__* csrs; } ;
struct TYPE_3__ {scalar_t__ csr; } ;
struct TYPE_4__ {TYPE_1__ POx_SG_TBIA; } ;
typedef  TYPE_2__ io7_ioport_csrs ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(struct pci_controller *hose, dma_addr_t start, dma_addr_t end)
{
	io7_ioport_csrs *csrs = ((struct io7_port *)hose->sysdata)->csrs;

	FUNC1();
	csrs->POx_SG_TBIA.csr = 0;
	FUNC0();
	csrs->POx_SG_TBIA.csr;
}