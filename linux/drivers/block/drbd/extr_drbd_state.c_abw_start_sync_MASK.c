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
struct TYPE_2__ {int conn; } ;
struct drbd_device {TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_VERBOSE ; 
 int /*<<< orphan*/  C_CONNECTED ; 
#define  C_STARTING_SYNC_S 129 
#define  C_STARTING_SYNC_T 128 
 int /*<<< orphan*/  C_SYNC_SOURCE ; 
 int /*<<< orphan*/  C_WF_SYNC_UUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drbd_device *device, int rv)
{
	if (rv) {
		FUNC2(device, "Writing the bitmap failed not starting resync.\n");
		FUNC1(device, FUNC0(conn, C_CONNECTED), CS_VERBOSE);
		return;
	}

	switch (device->state.conn) {
	case C_STARTING_SYNC_T:
		FUNC1(device, FUNC0(conn, C_WF_SYNC_UUID), CS_VERBOSE);
		break;
	case C_STARTING_SYNC_S:
		FUNC3(device, C_SYNC_SOURCE);
		break;
	}
}