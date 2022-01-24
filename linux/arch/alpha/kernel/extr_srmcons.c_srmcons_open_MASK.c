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
struct tty_struct {struct tty_port* port; struct srmcons_private* driver_data; } ;
struct tty_port {int /*<<< orphan*/  lock; struct tty_struct* tty; } ;
struct srmcons_private {int /*<<< orphan*/  timer; struct tty_port port; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct srmcons_private srmcons_singleton ; 

__attribute__((used)) static int
FUNC3(struct tty_struct *tty, struct file *filp)
{
	struct srmcons_private *srmconsp = &srmcons_singleton;
	struct tty_port *port = &srmconsp->port;
	unsigned long flags;

	FUNC1(&port->lock, flags);

	if (!port->tty) {
		tty->driver_data = srmconsp;
		tty->port = port;
		port->tty = tty; /* XXX proper refcounting */
		FUNC0(&srmconsp->timer, jiffies + 10);
	}

	FUNC2(&port->lock, flags);

	return 0;
}