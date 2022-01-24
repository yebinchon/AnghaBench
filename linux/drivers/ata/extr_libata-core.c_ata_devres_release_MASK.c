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
struct device {int dummy; } ;
struct ata_port {scalar_t__ scsi_host; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 struct ata_host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct device *gendev, void *res)
{
	struct ata_host *host = FUNC1(gendev);
	int i;

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];

		if (!ap)
			continue;

		if (ap->scsi_host)
			FUNC3(ap->scsi_host);

	}

	FUNC2(gendev, NULL);
	FUNC0(host);
}