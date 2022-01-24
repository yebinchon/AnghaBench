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
struct ttyprintk_port {int /*<<< orphan*/  port_write_mutex; } ;
struct tty_struct {struct ttyprintk_port* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char const*,int) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty,
		const unsigned char *buf, int count)
{
	struct ttyprintk_port *tpkp = tty->driver_data;
	int ret;


	/* exclusive use of tpk_printk within this tty */
	FUNC0(&tpkp->port_write_mutex);
	ret = FUNC2(buf, count);
	FUNC1(&tpkp->port_write_mutex);

	return ret;
}