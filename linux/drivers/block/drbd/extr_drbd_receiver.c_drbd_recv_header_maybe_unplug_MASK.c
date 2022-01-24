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
struct packet_info {int dummy; } ;
struct TYPE_2__ {void* rbuf; int /*<<< orphan*/  socket; } ;
struct drbd_connection {int /*<<< orphan*/  last_received; TYPE_1__ data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 int FUNC0 (struct drbd_connection*,void*,struct packet_info*) ; 
 unsigned int FUNC1 (struct drbd_connection*) ; 
 int FUNC2 (struct drbd_connection*,void*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_connection*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static int FUNC6(struct drbd_connection *connection, struct packet_info *pi)
{
	void *buffer = connection->data.rbuf;
	unsigned int size = FUNC1(connection);
	int err;

	err = FUNC3(connection->data.socket, buffer, size, MSG_NOSIGNAL|MSG_DONTWAIT);
	if (err != size) {
		/* If we have nothing in the receive buffer now, to reduce
		 * application latency, try to drain the backend queues as
		 * quickly as possible, and let remote TCP know what we have
		 * received so far. */
		if (err == -EAGAIN) {
			FUNC4(connection->data.socket);
			FUNC5(connection);
		}
		if (err > 0) {
			buffer += err;
			size -= err;
		}
		err = FUNC2(connection, buffer, size);
		if (err)
			return err;
	}

	err = FUNC0(connection, connection->data.rbuf, pi);
	connection->last_received = jiffies;

	return err;
}