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
struct socket {int dummy; } ;
struct net_conf {int ping_timeo; scalar_t__ sock_check_timeo; } ;
struct drbd_connection {int /*<<< orphan*/  net_conf; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct socket**) ; 
 struct net_conf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct drbd_connection *connection,
				   struct socket **sock1,
				   struct socket **sock2)
{
	struct net_conf *nc;
	int timeout;
	bool ok;

	if (!*sock1 || !*sock2)
		return false;

	FUNC2();
	nc = FUNC1(connection->net_conf);
	timeout = (nc->sock_check_timeo ?: nc->ping_timeo) * HZ / 10;
	FUNC3();
	FUNC4(timeout);

	ok = FUNC0(sock1);
	ok = FUNC0(sock2) && ok;

	return ok;
}