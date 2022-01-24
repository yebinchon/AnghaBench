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
struct tty_port {int /*<<< orphan*/  lock; scalar_t__ tty; } ;
struct timer_list {int dummy; } ;
struct srmcons_private {int /*<<< orphan*/  timer; struct tty_port port; } ;

/* Variables and functions */
 struct srmcons_private* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srmcons_callback_lock ; 
 int /*<<< orphan*/  FUNC7 (struct tty_port*) ; 
 struct srmcons_private* srmconsp ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void
FUNC8(struct timer_list *t)
{
	struct srmcons_private *srmconsp = FUNC0(srmconsp, t, timer);
	struct tty_port *port = &srmconsp->port;
	unsigned long flags;
	int incr = 10;

	FUNC2(flags);
	if (FUNC5(&srmcons_callback_lock)) {
		if (!FUNC7(port))
			incr = 100;
		FUNC6(&srmcons_callback_lock);
	} 

	FUNC4(&port->lock);
	if (port->tty)
		FUNC3(&srmconsp->timer, jiffies + incr);
	FUNC6(&port->lock);

	FUNC1(flags);
}