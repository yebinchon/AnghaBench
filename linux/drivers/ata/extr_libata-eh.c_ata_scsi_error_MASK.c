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
struct ata_port {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  eh_cmd_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*,struct ata_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*,struct ata_port*) ; 
 struct ata_port* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  eh_work_q ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC10(struct Scsi_Host *host)
{
	struct ata_port *ap = FUNC5(host);
	unsigned long flags;
	FUNC1(eh_work_q);

	FUNC0("ENTER\n");

	FUNC8(host->host_lock, flags);
	FUNC7(&host->eh_cmd_q, &eh_work_q);
	FUNC9(host->host_lock, flags);

	FUNC3(host, ap, &eh_work_q);

	/* If we timed raced normal completion and there is nothing to
	   recover nr_timedout == 0 why exactly are we doing error recovery ? */
	FUNC4(host, ap);

	/* finish or retry handled scmd's and clean up */
	FUNC2(!FUNC6(&eh_work_q));

	FUNC0("EXIT\n");
}