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
struct TYPE_2__ {int /*<<< orphan*/  ws_col; int /*<<< orphan*/  ws_row; } ;
struct tty_struct {TYPE_1__ winsize; struct line* driver_data; } ;
struct tty_port {int dummy; } ;
struct line {int sigio; int /*<<< orphan*/  chan_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tty_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct line*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct line*) ; 

__attribute__((used)) static int FUNC3(struct tty_port *port, struct tty_struct *tty)
{
	int ret;
	struct line *line = tty->driver_data;

	ret = FUNC2(line);
	if (ret)
		return ret;

	if (!line->sigio) {
		FUNC0(line->chan_out, port);
		line->sigio = 1;
	}

	FUNC1(line, &tty->winsize.ws_row,
		&tty->winsize.ws_col);

	return 0;
}