#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ role; scalar_t__ peer; } ;
struct drbd_device {TYPE_1__ state; } ;
struct TYPE_6__ {TYPE_2__* connection; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ CS_SERIALIZE ; 
 scalar_t__ CS_VERBOSE ; 
 int /*<<< orphan*/  C_SYNC_SOURCE ; 
 int /*<<< orphan*/  C_WF_SYNC_UUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESOLVE_CONFLICTS ; 
 scalar_t__ R_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct drbd_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct drbd_device *device)
{
	int iass; /* I am sync source */

	FUNC2(device, "Resync of new storage after online grow\n");
	if (device->state.role != device->state.peer)
		iass = (device->state.role == R_PRIMARY);
	else
		iass = FUNC5(RESOLVE_CONFLICTS, &FUNC4(device)->connection->flags);

	if (iass)
		FUNC3(device, C_SYNC_SOURCE);
	else
		FUNC1(device, FUNC0(conn, C_WF_SYNC_UUID), CS_VERBOSE + CS_SERIALIZE);
}