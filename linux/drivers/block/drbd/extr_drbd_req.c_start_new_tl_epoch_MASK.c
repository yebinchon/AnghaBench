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
struct drbd_connection {scalar_t__ current_tle_writes; int /*<<< orphan*/  current_tle_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*) ; 

void FUNC2(struct drbd_connection *connection)
{
	/* no point closing an epoch, if it is empty, anyways. */
	if (connection->current_tle_writes == 0)
		return;

	connection->current_tle_writes = 0;
	FUNC0(&connection->current_tle_nr);
	FUNC1(connection);
}