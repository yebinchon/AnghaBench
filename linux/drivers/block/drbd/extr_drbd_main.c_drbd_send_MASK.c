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
struct socket {int dummy; } ;
struct msghdr {unsigned int msg_flags; int /*<<< orphan*/  msg_iter; } ;
struct kvec {void* iov_base; size_t iov_len; } ;
struct TYPE_5__ {struct socket* socket; } ;
struct TYPE_4__ {struct socket* socket; } ;
struct drbd_connection {TYPE_2__ meta; int /*<<< orphan*/  flags; TYPE_1__ data; int /*<<< orphan*/  net_conf; int /*<<< orphan*/  ko_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  ko_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_HARD ; 
 int /*<<< orphan*/  C_BROKEN_PIPE ; 
 int /*<<< orphan*/  C_TIMEOUT ; 
 int EAGAIN ; 
 int EBADR ; 
 int EINTR ; 
 unsigned int MSG_NOSIGNAL ; 
 int /*<<< orphan*/  NET_CONGESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_connection*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,size_t) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct socket*,struct msghdr*) ; 
 scalar_t__ FUNC11 (struct drbd_connection*,struct socket*) ; 

int FUNC12(struct drbd_connection *connection, struct socket *sock,
	      void *buf, size_t size, unsigned msg_flags)
{
	struct kvec iov = {.iov_base = buf, .iov_len = size};
	struct msghdr msg = {.msg_flags = msg_flags | MSG_NOSIGNAL};
	int rv, sent = 0;

	if (!sock)
		return -EBADR;

	/* THINK  if (signal_pending) return ... ? */

	FUNC6(&msg.msg_iter, WRITE, &iov, 1, size);

	if (sock == connection->data.socket) {
		FUNC8();
		connection->ko_count = FUNC7(connection->net_conf)->ko_count;
		FUNC9();
		FUNC4(connection);
	}
	do {
		rv = FUNC10(sock, &msg);
		if (rv == -EAGAIN) {
			if (FUNC11(connection, sock))
				break;
			else
				continue;
		}
		if (rv == -EINTR) {
			FUNC5(current);
			rv = 0;
		}
		if (rv < 0)
			break;
		sent += rv;
	} while (sent < size);

	if (sock == connection->data.socket)
		FUNC1(NET_CONGESTED, &connection->flags);

	if (rv <= 0) {
		if (rv != -EAGAIN) {
			FUNC3(connection, "%s_sendmsg returned %d\n",
				 sock == connection->meta.socket ? "msock" : "sock",
				 rv);
			FUNC2(connection, FUNC0(conn, C_BROKEN_PIPE), CS_HARD);
		} else
			FUNC2(connection, FUNC0(conn, C_TIMEOUT), CS_HARD);
	}

	return sent;
}