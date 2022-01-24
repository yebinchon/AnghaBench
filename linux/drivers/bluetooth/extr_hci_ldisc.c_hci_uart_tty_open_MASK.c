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
struct tty_struct {int receive_room; struct hci_uart* disc_data; TYPE_1__* ops; } ;
struct hci_uart {int alignment; int /*<<< orphan*/  proto_lock; int /*<<< orphan*/  write_work; int /*<<< orphan*/  init_ready; scalar_t__ padding; struct tty_struct* tty; } ;
struct TYPE_2__ {int /*<<< orphan*/ * write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENFILE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hci_uart_init_work ; 
 int /*<<< orphan*/  hci_uart_write_work ; 
 struct hci_uart* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty)
{
	struct hci_uart *hu;

	FUNC0("tty %p", tty);

	/* Error if the tty has no write op instead of leaving an exploitable
	 * hole
	 */
	if (tty->ops->write == NULL)
		return -EOPNOTSUPP;

	hu = FUNC3(sizeof(struct hci_uart), GFP_KERNEL);
	if (!hu) {
		FUNC1("Can't allocate control structure");
		return -ENFILE;
	}

	tty->disc_data = hu;
	hu->tty = tty;
	tty->receive_room = 65536;

	/* disable alignment support by default */
	hu->alignment = 1;
	hu->padding = 0;

	FUNC2(&hu->init_ready, hci_uart_init_work);
	FUNC2(&hu->write_work, hci_uart_write_work);

	FUNC4(&hu->proto_lock);

	/* Flush any pending characters in the driver */
	FUNC5(tty);

	return 0;
}