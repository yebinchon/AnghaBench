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
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {struct ahci_port_priv* private_data; } ;
struct ahci_port_priv {scalar_t__ fbs_enabled; } ;

/* Variables and functions */
 int FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int FUNC2 (struct ata_queued_cmd*) ; 

__attribute__((used)) static int FUNC3(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct ahci_port_priv *pp = ap->private_data;

	if (!FUNC1(ap) || pp->fbs_enabled)
		return FUNC0(qc);
	else
		return FUNC2(qc);
}