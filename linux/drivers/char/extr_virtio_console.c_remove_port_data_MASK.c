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
struct port {int /*<<< orphan*/  outvq_lock; int /*<<< orphan*/  inbuf_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct port *port)
{
	FUNC2(&port->inbuf_lock);
	/* Remove unused data this port might have received. */
	FUNC0(port);
	FUNC3(&port->inbuf_lock);

	FUNC2(&port->outvq_lock);
	FUNC1(port);
	FUNC3(&port->outvq_lock);
}