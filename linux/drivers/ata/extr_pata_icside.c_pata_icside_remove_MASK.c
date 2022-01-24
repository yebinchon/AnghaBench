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
struct pata_icside_state {scalar_t__ dma; } ;
struct expansion_card {int dummy; } ;
struct ata_host {struct pata_icside_state* private_data; } ;

/* Variables and functions */
 scalar_t__ NO_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 struct ata_host* FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct expansion_card*) ; 

__attribute__((used)) static void FUNC5(struct expansion_card *ec)
{
	struct ata_host *host = FUNC1(ec);
	struct pata_icside_state *state = host->private_data;

	FUNC0(host);

	FUNC4(ec);

	/*
	 * don't NULL out the drvdata - devres/libata wants it
	 * to free the ata_host structure.
	 */
	if (state->dma != NO_DMA)
		FUNC3(state->dma);

	FUNC2(ec);
}