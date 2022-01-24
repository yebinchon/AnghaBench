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
union drbd_state {int /*<<< orphan*/  i; } ;
struct p_req_state {void* val; void* mask; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {int agreed_pro_version; struct drbd_socket data; } ;
typedef  enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;

/* Variables and functions */
 int EIO ; 
 int P_CONN_ST_CHG_REQ ; 
 int P_STATE_CHG_REQ ; 
 struct p_req_state* FUNC0 (struct drbd_connection*,struct drbd_socket*) ; 
 int FUNC1 (struct drbd_connection*,struct drbd_socket*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct drbd_connection *connection, union drbd_state mask, union drbd_state val)
{
	enum drbd_packet cmd;
	struct drbd_socket *sock;
	struct p_req_state *p;

	cmd = connection->agreed_pro_version < 100 ? P_STATE_CHG_REQ : P_CONN_ST_CHG_REQ;
	sock = &connection->data;
	p = FUNC0(connection, sock);
	if (!p)
		return -EIO;
	p->mask = FUNC2(mask.i);
	p->val = FUNC2(val.i);
	return FUNC1(connection, sock, cmd, sizeof(*p), NULL, 0);
}