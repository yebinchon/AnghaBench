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
struct socket {TYPE_1__* sk; } ;
struct packet_info {int cmd; } ;
struct net_conf {int ping_timeo; } ;
struct TYPE_4__ {int /*<<< orphan*/  rbuf; } ;
struct drbd_connection {TYPE_2__ data; int /*<<< orphan*/  net_conf; } ;
struct TYPE_3__ {int sk_rcvtimeo; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int FUNC0 (struct drbd_connection*,int /*<<< orphan*/ ,struct packet_info*) ; 
 unsigned int FUNC1 (struct drbd_connection*) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct net_conf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct drbd_connection *connection, struct socket *sock)
{
	unsigned int header_size = FUNC1(connection);
	struct packet_info pi;
	struct net_conf *nc;
	int err;

	FUNC4();
	nc = FUNC3(connection->net_conf);
	if (!nc) {
		FUNC5();
		return -EIO;
	}
	sock->sk->sk_rcvtimeo = nc->ping_timeo * 4 * HZ / 10;
	FUNC5();

	err = FUNC2(sock, connection->data.rbuf, header_size, 0);
	if (err != header_size) {
		if (err >= 0)
			err = -EIO;
		return err;
	}
	err = FUNC0(connection, connection->data.rbuf, &pi);
	if (err)
		return err;
	return pi.cmd;
}