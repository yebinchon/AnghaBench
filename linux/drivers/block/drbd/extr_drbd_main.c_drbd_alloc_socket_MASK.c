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
struct drbd_socket {void* sbuf; void* rbuf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct drbd_socket *socket)
{
	socket->rbuf = (void *) FUNC0(GFP_KERNEL);
	if (!socket->rbuf)
		return -ENOMEM;
	socket->sbuf = (void *) FUNC0(GFP_KERNEL);
	if (!socket->sbuf)
		return -ENOMEM;
	return 0;
}