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
struct p_protocol {int /*<<< orphan*/  integrity_alg; void* conn_flags; void* two_primaries; void* after_sb_2p; void* after_sb_1p; void* after_sb_0p; void* protocol; } ;
struct net_conf {int wire_protocol; int after_sb_0p; int after_sb_1p; int after_sb_2p; int two_primaries; int /*<<< orphan*/  integrity_alg; scalar_t__ tentative; scalar_t__ discard_my_data; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {int agreed_pro_version; int /*<<< orphan*/  net_conf; struct drbd_socket data; } ;
typedef  enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;

/* Variables and functions */
 int CF_DISCARD_MY_DATA ; 
 int CF_DRY_RUN ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 struct p_protocol* FUNC0 (struct drbd_connection*,struct drbd_socket*) ; 
 int FUNC1 (struct drbd_connection*,struct drbd_socket*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_connection*,char*) ; 
 struct net_conf* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct drbd_connection *connection, enum drbd_packet cmd)
{
	struct drbd_socket *sock;
	struct p_protocol *p;
	struct net_conf *nc;
	int size, cf;

	sock = &connection->data;
	p = FUNC0(connection, sock);
	if (!p)
		return -EIO;

	FUNC5();
	nc = FUNC4(connection->net_conf);

	if (nc->tentative && connection->agreed_pro_version < 92) {
		FUNC6();
		FUNC3(connection, "--dry-run is not supported by peer");
		return -EOPNOTSUPP;
	}

	size = sizeof(*p);
	if (connection->agreed_pro_version >= 87)
		size += FUNC8(nc->integrity_alg) + 1;

	p->protocol      = FUNC2(nc->wire_protocol);
	p->after_sb_0p   = FUNC2(nc->after_sb_0p);
	p->after_sb_1p   = FUNC2(nc->after_sb_1p);
	p->after_sb_2p   = FUNC2(nc->after_sb_2p);
	p->two_primaries = FUNC2(nc->two_primaries);
	cf = 0;
	if (nc->discard_my_data)
		cf |= CF_DISCARD_MY_DATA;
	if (nc->tentative)
		cf |= CF_DRY_RUN;
	p->conn_flags    = FUNC2(cf);

	if (connection->agreed_pro_version >= 87)
		FUNC7(p->integrity_alg, nc->integrity_alg);
	FUNC6();

	return FUNC1(connection, sock, cmd, size, NULL, 0);
}