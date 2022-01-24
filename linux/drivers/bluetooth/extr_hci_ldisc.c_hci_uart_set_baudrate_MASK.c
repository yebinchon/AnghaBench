#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ktermios {int /*<<< orphan*/  c_ospeed; int /*<<< orphan*/  c_ispeed; int /*<<< orphan*/  c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct hci_uart {TYPE_1__* hdev; struct tty_struct* tty; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CBAUD ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC2 (struct ktermios*,unsigned int,unsigned int) ; 

void FUNC3(struct hci_uart *hu, unsigned int speed)
{
	struct tty_struct *tty = hu->tty;
	struct ktermios ktermios;

	ktermios = tty->termios;
	ktermios.c_cflag &= ~CBAUD;
	FUNC2(&ktermios, speed, speed);

	/* tty_set_termios() return not checked as it is always 0 */
	FUNC1(tty, &ktermios);

	FUNC0("%s: New tty speeds: %d/%d", hu->hdev->name,
	       tty->termios.c_ispeed, tty->termios.c_ospeed);
}