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
struct scsi_host_template {int dummy; } ;
struct ata_port {struct Scsi_Host* scsi_host; TYPE_1__* host; int /*<<< orphan*/  tdev; int /*<<< orphan*/  print_id; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;
struct Scsi_Host {int eh_noresume; int max_id; int max_lun; int max_channel; int max_cmd_len; int max_host_blocked; int /*<<< orphan*/  unique_id; int /*<<< orphan*/  transportt; int /*<<< orphan*/ * hostdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ata_scsi_transport_template ; 
 int FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 

int FUNC4(struct ata_host *host, struct scsi_host_template *sht)
{
	int i, rc;

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];
		struct Scsi_Host *shost;

		rc = -ENOMEM;
		shost = FUNC1(sht, sizeof(struct ata_port *));
		if (!shost)
			goto err_alloc;

		shost->eh_noresume = 1;
		*(struct ata_port **)&shost->hostdata[0] = ap;
		ap->scsi_host = shost;

		shost->transportt = ata_scsi_transport_template;
		shost->unique_id = ap->print_id;
		shost->max_id = 16;
		shost->max_lun = 1;
		shost->max_channel = 1;
		shost->max_cmd_len = 32;

		/* Schedule policy is determined by ->qc_defer()
		 * callback and it needs to see every deferred qc.
		 * Set host_blocked to 1 to prevent SCSI midlayer from
		 * automatically deferring requests.
		 */
		shost->max_host_blocked = 1;

		rc = FUNC0(ap->scsi_host,
						&ap->tdev, ap->host->dev);
		if (rc)
			goto err_add;
	}

	return 0;

 err_add:
	FUNC2(host->ports[i]->scsi_host);
 err_alloc:
	while (--i >= 0) {
		struct Scsi_Host *shost = host->ports[i]->scsi_host;

		FUNC3(shost);
		FUNC2(shost);
	}
	return rc;
}