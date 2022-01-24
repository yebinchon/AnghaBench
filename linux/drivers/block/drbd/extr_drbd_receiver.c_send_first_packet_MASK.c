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
struct drbd_socket {int dummy; } ;
struct drbd_connection {int dummy; } ;
typedef  enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_connection*,struct drbd_socket*) ; 
 int FUNC1 (struct drbd_connection*,struct drbd_socket*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drbd_connection *connection, struct drbd_socket *sock,
			     enum drbd_packet cmd)
{
	if (!FUNC0(connection, sock))
		return -EIO;
	return FUNC1(connection, sock, cmd, 0, NULL, 0);
}