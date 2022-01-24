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
struct tty_struct {struct line* driver_data; } ;
struct tty_port {int dummy; } ;
struct line {scalar_t__ sigio; } ;

/* Variables and functions */
 struct tty_struct* FUNC0 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(struct tty_port *port)
{
	struct tty_struct *tty = FUNC0(port);
	struct line *line = tty->driver_data;

	if (line->sigio) {
		FUNC1(tty);
		line->sigio = 0;
	}
}