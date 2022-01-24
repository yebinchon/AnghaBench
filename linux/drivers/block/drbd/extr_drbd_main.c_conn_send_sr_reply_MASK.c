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
struct p_req_state_reply {int /*<<< orphan*/  retcode; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {int agreed_pro_version; struct drbd_socket meta; } ;
typedef  enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef  enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;

/* Variables and functions */
 int P_CONN_ST_CHG_REPLY ; 
 int P_STATE_CHG_REPLY ; 
 struct p_req_state_reply* FUNC0 (struct drbd_connection*,struct drbd_socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*,struct drbd_socket*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct drbd_connection *connection, enum drbd_state_rv retcode)
{
	struct drbd_socket *sock;
	struct p_req_state_reply *p;
	enum drbd_packet cmd = connection->agreed_pro_version < 100 ? P_STATE_CHG_REPLY : P_CONN_ST_CHG_REPLY;

	sock = &connection->meta;
	p = FUNC0(connection, sock);
	if (p) {
		p->retcode = FUNC2(retcode);
		FUNC1(connection, sock, cmd, sizeof(*p), NULL, 0);
	}
}