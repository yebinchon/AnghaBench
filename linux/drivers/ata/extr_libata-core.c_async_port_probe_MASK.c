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
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
typedef  int /*<<< orphan*/  async_cookie_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ATA_HOST_PARALLEL_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,int) ; 

__attribute__((used)) static void FUNC3(void *data, async_cookie_t cookie)
{
	struct ata_port *ap = data;

	/*
	 * If we're not allowed to scan this host in parallel,
	 * we need to wait until all previous scans have completed
	 * before going further.
	 * Jeff Garzik says this is only within a controller, so we
	 * don't need to wait for port 0, only for later ports.
	 */
	if (!(ap->host->flags & ATA_HOST_PARALLEL_SCAN) && ap->port_no != 0)
		FUNC0(cookie);

	(void)FUNC1(ap);

	/* in order to keep device order, we need to synchronize at this point */
	FUNC0(cookie);

	FUNC2(ap, 1);
}