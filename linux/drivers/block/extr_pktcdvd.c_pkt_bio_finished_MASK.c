#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  attention; } ;
struct TYPE_3__ {int /*<<< orphan*/  pending_bios; } ;
struct pktcdvd_device {int /*<<< orphan*/  wqueue; TYPE_2__ iosched; TYPE_1__ cdrw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct pktcdvd_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pktcdvd_device *pd)
{
	FUNC0(FUNC2(&pd->cdrw.pending_bios) <= 0);
	if (FUNC1(&pd->cdrw.pending_bios)) {
		FUNC4(2, pd, "queue empty\n");
		FUNC3(&pd->iosched.attention, 1);
		FUNC5(&pd->wqueue);
	}
}