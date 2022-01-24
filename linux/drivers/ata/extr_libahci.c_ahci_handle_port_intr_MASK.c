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
typedef  int u32 ;
struct ata_port {int dummy; } ;
struct ata_host {unsigned int n_ports; int /*<<< orphan*/  dev; struct ata_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 

u32 FUNC4(struct ata_host *host, u32 irq_masked)
{
	unsigned int i, handled = 0;

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap;

		if (!(irq_masked & (1 << i)))
			continue;

		ap = host->ports[i];
		if (ap) {
			FUNC1(ap);
			FUNC0("port %u\n", i);
		} else {
			FUNC0("port %u (no irq)\n", i);
			if (FUNC2())
				FUNC3(host->dev,
					 "interrupt on disabled port %u\n", i);
		}

		handled = 1;
	}

	return handled;
}