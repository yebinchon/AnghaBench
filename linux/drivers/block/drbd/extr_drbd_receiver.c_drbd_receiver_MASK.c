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
struct drbd_thread {struct drbd_connection* connection; } ;
struct drbd_connection {int /*<<< orphan*/  receiver_plug; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_HARD ; 
 int /*<<< orphan*/  C_DISCONNECTING ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conn ; 
 int FUNC3 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_connection*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_connection*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct drbd_thread *thi)
{
	struct drbd_connection *connection = thi->connection;
	int h;

	FUNC6(connection, "receiver (re)started\n");

	do {
		h = FUNC3(connection);
		if (h == 0) {
			FUNC4(connection);
			FUNC9(HZ);
		}
		if (h == -1) {
			FUNC7(connection, "Discarding network configuration.\n");
			FUNC5(connection, FUNC0(conn, C_DISCONNECTING), CS_HARD);
		}
	} while (h == 0);

	if (h > 0) {
		FUNC2(&connection->receiver_plug);
		FUNC8(connection);
		FUNC1(&connection->receiver_plug);
	}

	FUNC4(connection);

	FUNC6(connection, "receiver terminated\n");
	return 0;
}