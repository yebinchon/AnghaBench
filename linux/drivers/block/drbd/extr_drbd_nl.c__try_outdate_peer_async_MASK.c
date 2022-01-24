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
struct drbd_connection {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drbd_connection*) ; 
 int /*<<< orphan*/  drbd_destroy_connection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *data)
{
	struct drbd_connection *connection = (struct drbd_connection *)data;

	FUNC0(connection);

	FUNC1(&connection->kref, drbd_destroy_connection);
	return 0;
}