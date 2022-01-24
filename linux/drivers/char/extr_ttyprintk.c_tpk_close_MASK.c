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
struct ttyprintk_port {int /*<<< orphan*/  port; int /*<<< orphan*/  port_write_mutex; } ;
struct tty_struct {struct ttyprintk_port* driver_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tty_struct*,struct file*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, struct file *filp)
{
	struct ttyprintk_port *tpkp = tty->driver_data;

	FUNC0(&tpkp->port_write_mutex);
	/* flush tpk_printk buffer */
	FUNC2(NULL, 0);
	FUNC1(&tpkp->port_write_mutex);

	FUNC3(&tpkp->port, tty, filp);
}