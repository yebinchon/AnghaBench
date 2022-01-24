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
struct packet_info {struct p_req_state_reply* data; } ;
struct p_req_state_reply {int /*<<< orphan*/  retcode; } ;
struct drbd_connection {int /*<<< orphan*/  ping_wait; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_WD_ST_CHG_FAIL ; 
 int /*<<< orphan*/  CONN_WD_ST_CHG_OKAY ; 
 int SS_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drbd_connection *connection, struct packet_info *pi)
{
	struct p_req_state_reply *p = pi->data;
	int retcode = FUNC0(p->retcode);

	if (retcode >= SS_SUCCESS) {
		FUNC3(CONN_WD_ST_CHG_OKAY, &connection->flags);
	} else {
		FUNC3(CONN_WD_ST_CHG_FAIL, &connection->flags);
		FUNC1(connection, "Requested state change failed by peer: %s (%d)\n",
			 FUNC2(retcode), retcode);
	}
	FUNC4(&connection->ping_wait);

	return 0;
}