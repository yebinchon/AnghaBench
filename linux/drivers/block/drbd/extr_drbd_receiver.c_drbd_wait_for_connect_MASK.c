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
struct socket {int /*<<< orphan*/  sk; } ;
struct net_conf {int connect_int; } ;
struct drbd_connection {int /*<<< orphan*/  net_conf; } ;
struct accept_wait_data {int /*<<< orphan*/  s_listen; int /*<<< orphan*/  door_bell; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_HARD ; 
 int /*<<< orphan*/  C_DISCONNECTING ; 
 int EAGAIN ; 
 int EINTR ; 
 int ERESTARTSYS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_connection*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct socket**,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 struct net_conf* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct accept_wait_data*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct socket *FUNC10(struct drbd_connection *connection, struct accept_wait_data *ad)
{
	int timeo, connect_int, err = 0;
	struct socket *s_estab = NULL;
	struct net_conf *nc;

	FUNC6();
	nc = FUNC5(connection->net_conf);
	if (!nc) {
		FUNC7();
		return NULL;
	}
	connect_int = nc->connect_int;
	FUNC7();

	timeo = connect_int * HZ;
	/* 28.5% random jitter */
	timeo += (FUNC4() & 1) ? timeo / 7 : -timeo / 7;

	err = FUNC9(&ad->door_bell, timeo);
	if (err <= 0)
		return NULL;

	err = FUNC3(ad->s_listen, &s_estab, 0);
	if (err < 0) {
		if (err != -EAGAIN && err != -EINTR && err != -ERESTARTSYS) {
			FUNC2(connection, "accept failed, err = %d\n", err);
			FUNC1(connection, FUNC0(conn, C_DISCONNECTING), CS_HARD);
		}
	}

	if (s_estab)
		FUNC8(s_estab->sk, ad);

	return s_estab;
}