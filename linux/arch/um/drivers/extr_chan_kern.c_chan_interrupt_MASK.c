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
struct tty_port {int dummy; } ;
struct line {struct chan* chan_out; struct tty_port port; int /*<<< orphan*/  task; struct chan* chan_in; } ;
struct chan {scalar_t__ primary; int /*<<< orphan*/  data; int /*<<< orphan*/  fd; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct chan*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,int) ; 

void FUNC7(struct line *line, int irq)
{
	struct tty_port *port = &line->port;
	struct chan *chan = line->chan_in;
	int err;
	char c;

	if (!chan || !chan->ops->read)
		goto out;

	do {
		if (!FUNC3(port, 1)) {
			FUNC1(&line->task, 1);
			goto out;
		}
		err = chan->ops->read(chan->fd, &c, chan->data);
		if (err > 0)
			FUNC5(port, c, TTY_NORMAL);
	} while (err > 0);

	if (err == -EIO) {
		if (chan->primary) {
			FUNC6(&line->port, false);
			if (line->chan_out != chan)
				FUNC0(line->chan_out, 1);
		}
		FUNC0(chan, 1);
		if (chan->primary)
			return;
	}
 out:
	FUNC4(port);
}