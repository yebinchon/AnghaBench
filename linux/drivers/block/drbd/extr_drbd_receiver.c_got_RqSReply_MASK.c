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
struct packet_info {int /*<<< orphan*/  vnr; struct p_req_state_reply* data; } ;
struct p_req_state_reply {int /*<<< orphan*/  retcode; } ;
struct drbd_peer_device {struct drbd_device* device; } ;
struct drbd_device {int /*<<< orphan*/  state_wait; int /*<<< orphan*/  flags; } ;
struct drbd_connection {int agreed_pro_version; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_ST_CHG_FAIL ; 
 int /*<<< orphan*/  CL_ST_CHG_SUCCESS ; 
 int /*<<< orphan*/  CONN_WD_ST_CHG_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int EIO ; 
 int SS_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct drbd_peer_device* FUNC2 (struct drbd_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct drbd_connection*,struct packet_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct drbd_connection *connection, struct packet_info *pi)
{
	struct drbd_peer_device *peer_device;
	struct drbd_device *device;
	struct p_req_state_reply *p = pi->data;
	int retcode = FUNC1(p->retcode);

	peer_device = FUNC2(connection, pi->vnr);
	if (!peer_device)
		return -EIO;
	device = peer_device->device;

	if (FUNC7(CONN_WD_ST_CHG_REQ, &connection->flags)) {
		FUNC0(device, connection->agreed_pro_version < 100);
		return FUNC5(connection, pi);
	}

	if (retcode >= SS_SUCCESS) {
		FUNC6(CL_ST_CHG_SUCCESS, &device->flags);
	} else {
		FUNC6(CL_ST_CHG_FAIL, &device->flags);
		FUNC3(device, "Requested state change failed by peer: %s (%d)\n",
			FUNC4(retcode), retcode);
	}
	FUNC8(&device->state_wait);

	return 0;
}