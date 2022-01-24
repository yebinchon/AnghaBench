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
struct port {int /*<<< orphan*/  inbuf_lock; scalar_t__ inbuf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct port *port)
{
	unsigned long flags;
	bool ret;

	ret = false;
	FUNC1(&port->inbuf_lock, flags);
	port->inbuf = FUNC0(port);
	if (port->inbuf)
		ret = true;

	FUNC2(&port->inbuf_lock, flags);
	return ret;
}