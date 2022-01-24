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
struct line {int /*<<< orphan*/  port; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct chan {struct line* line; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct line*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct chan *chan = data;
	struct line *line = chan->line;
	int err;

	/*
	 * Interrupts are disabled here because genirq keep irqs disabled when
	 * calling the action handler.
	 */

	FUNC1(&line->lock);
	err = FUNC0(line);
	if (err == 0) {
		FUNC2(&line->lock);
		return IRQ_NONE;
	} else if ((err < 0) && (err != -EAGAIN)) {
		line->head = line->buffer;
		line->tail = line->buffer;
	}
	FUNC2(&line->lock);

	FUNC3(&line->port);

	return IRQ_HANDLED;
}