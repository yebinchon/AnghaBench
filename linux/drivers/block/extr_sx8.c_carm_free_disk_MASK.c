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
struct gendisk {int flags; scalar_t__ queue; } ;
struct carm_port {struct gendisk* disk; } ;
struct carm_host {struct carm_port* port; } ;

/* Variables and functions */
 int GENHD_FL_UP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 

__attribute__((used)) static void FUNC3(struct carm_host *host, unsigned int port_no)
{
	struct carm_port *port = &host->port[port_no];
	struct gendisk *disk = port->disk;

	if (!disk)
		return;

	if (disk->flags & GENHD_FL_UP)
		FUNC1(disk);
	if (disk->queue)
		FUNC0(disk->queue);
	FUNC2(disk);
}