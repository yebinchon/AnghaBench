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
struct ata_port {TYPE_1__* host; } ;
struct ata_link {int /*<<< orphan*/  eh_context; struct ata_port* ap; } ;
struct ahci_host_priv {int /*<<< orphan*/  (* start_engine ) (struct ata_port*) ;int /*<<< orphan*/  (* stop_engine ) (struct ata_port*) ;} ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ata_link*,int /*<<< orphan*/ ,unsigned long,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 

__attribute__((used)) static int FUNC5(struct ata_link *link, unsigned int *class,
				 unsigned long deadline)
{
	struct ata_port *ap = link->ap;
	struct ahci_host_priv *hpriv = ap->host->private_data;
	bool online;
	int rc;

	FUNC0("ENTER\n");

	hpriv->stop_engine(ap);

	rc = FUNC2(link, FUNC1(&link->eh_context),
				 deadline, &online, NULL);

	hpriv->start_engine(ap);

	FUNC0("EXIT, rc=%d, class=%u\n", rc, *class);

	/* vt8251 doesn't clear BSY on signature FIS reception,
	 * request follow-up softreset.
	 */
	return online ? -EAGAIN : rc;
}