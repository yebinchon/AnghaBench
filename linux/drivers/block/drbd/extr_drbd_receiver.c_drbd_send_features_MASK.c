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
struct p_connection_features {void* feature_flags; void* protocol_max; void* protocol_min; } ;
struct drbd_socket {int dummy; } ;
struct drbd_connection {struct drbd_socket data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PRO_FEATURES ; 
 int /*<<< orphan*/  PRO_VERSION_MAX ; 
 int /*<<< orphan*/  PRO_VERSION_MIN ; 
 int /*<<< orphan*/  P_CONNECTION_FEATURES ; 
 struct p_connection_features* FUNC0 (struct drbd_connection*,struct drbd_socket*) ; 
 int FUNC1 (struct drbd_connection*,struct drbd_socket*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p_connection_features*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct drbd_connection *connection)
{
	struct drbd_socket *sock;
	struct p_connection_features *p;

	sock = &connection->data;
	p = FUNC0(connection, sock);
	if (!p)
		return -EIO;
	FUNC3(p, 0, sizeof(*p));
	p->protocol_min = FUNC2(PRO_VERSION_MIN);
	p->protocol_max = FUNC2(PRO_VERSION_MAX);
	p->feature_flags = FUNC2(PRO_FEATURES);
	return FUNC1(connection, sock, P_CONNECTION_FEATURES, sizeof(*p), NULL, 0);
}