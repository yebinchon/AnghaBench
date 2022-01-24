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
struct drbd_socket {int /*<<< orphan*/  mutex; } ;
struct drbd_connection {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct drbd_connection*,struct drbd_socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void *FUNC3(struct drbd_connection *connection, struct drbd_socket *sock)
{
	void *p;

	FUNC1(&sock->mutex);
	p = FUNC0(connection, sock);
	if (!p)
		FUNC2(&sock->mutex);

	return p;
}