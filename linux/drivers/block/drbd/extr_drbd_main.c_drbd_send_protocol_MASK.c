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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct drbd_connection {TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  P_PROTOCOL ; 
 int FUNC0 (struct drbd_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drbd_connection *connection)
{
	int err;

	FUNC1(&connection->data.mutex);
	err = FUNC0(connection, P_PROTOCOL);
	FUNC2(&connection->data.mutex);

	return err;
}