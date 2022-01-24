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
struct tty_port {int dummy; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ SERIAL_TIMER_VALUE ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct tty_port serial_port ; 
 int /*<<< orphan*/  serial_timer ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_lock ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct timer_list *unused)
{
	struct tty_port *port = &serial_port;
	int i = 0;
	int rd = 1;
	unsigned char c;

	FUNC3(&timer_lock);

	while (FUNC1(0)) {
		rd = FUNC2(0, &c, 1);
		if (rd <= 0)
			break;
		FUNC6(port, c, TTY_NORMAL);
		i++;
	}

	if (i)
		FUNC5(port);
	if (rd)
		FUNC0(&serial_timer, jiffies + SERIAL_TIMER_VALUE);
	FUNC4(&timer_lock);
}