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
struct net_conf {long ping_timeo; long ping_int; } ;
struct TYPE_6__ {TYPE_2__* socket; } ;
struct drbd_connection {TYPE_3__ meta; int /*<<< orphan*/  net_conf; } ;
struct TYPE_5__ {TYPE_1__* sk; } ;
struct TYPE_4__ {long sk_rcvtimeo; } ;

/* Variables and functions */
 long HZ ; 
 struct net_conf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct drbd_connection *connection, bool ping_timeout)
{
	long t;
	struct net_conf *nc;

	FUNC1();
	nc = FUNC0(connection->net_conf);
	t = ping_timeout ? nc->ping_timeo : nc->ping_int;
	FUNC2();

	t *= HZ;
	if (ping_timeout)
		t /= 10;

	connection->meta.socket->sk->sk_rcvtimeo = t;
}