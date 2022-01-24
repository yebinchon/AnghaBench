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
struct sata_oxnas_host_priv {int /*<<< orphan*/  port_frozen; } ;
struct ata_port {int /*<<< orphan*/  port_no; TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_oxnas_host_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap)
{
	struct sata_oxnas_host_priv *hd = ap->host->private_data;

	FUNC1("\n");
	hd->port_frozen |= FUNC0(ap->port_no);
	FUNC2();
}