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
struct drbd_connection {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_PING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*) ; 

__attribute__((used)) static inline void FUNC2(struct drbd_connection *connection)
{
	FUNC0(SEND_PING, &connection->flags);
	FUNC1(connection);
}