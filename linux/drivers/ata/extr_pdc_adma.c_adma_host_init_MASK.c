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
struct ata_host {int /*<<< orphan*/ * ports; scalar_t__* iomap; } ;

/* Variables and functions */
 size_t ADMA_MMIO_BAR ; 
 scalar_t__ ADMA_MODE_LOCK ; 
 unsigned int ADMA_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ata_host *host, unsigned int chip_id)
{
	unsigned int port_no;

	/* enable/lock aGO operation */
	FUNC1(7, host->iomap[ADMA_MMIO_BAR] + ADMA_MODE_LOCK);

	/* reset the ADMA logic */
	for (port_no = 0; port_no < ADMA_PORTS; ++port_no)
		FUNC0(host->ports[port_no]);
}