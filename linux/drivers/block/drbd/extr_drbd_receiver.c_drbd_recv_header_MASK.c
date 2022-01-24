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
struct TYPE_2__ {void* rbuf; } ;
struct drbd_connection {int /*<<< orphan*/  last_received; TYPE_1__ data; } ;

/* Variables and functions */
 int FUNC0 (struct drbd_connection*,void*,struct packet_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*) ; 
 int FUNC2 (struct drbd_connection*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static int FUNC3(struct drbd_connection *connection, struct packet_info *pi)
{
	void *buffer = connection->data.rbuf;
	int err;

	err = FUNC2(connection, buffer, FUNC1(connection));
	if (err)
		return err;

	err = FUNC0(connection, buffer, pi);
	connection->last_received = jiffies;

	return err;
}