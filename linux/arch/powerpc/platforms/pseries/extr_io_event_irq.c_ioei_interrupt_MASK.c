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
struct rtas_error_log {int dummy; } ;
struct pseries_io_event {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RTAS_DATA_BUF_SIZE ; 
 int /*<<< orphan*/  RTAS_IO_EVENTS ; 
 int /*<<< orphan*/  RTAS_VECTOR_EXTERNAL_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pseries_io_event*) ; 
 int /*<<< orphan*/  ioei_check_exception_token ; 
 struct pseries_io_event* FUNC2 (struct rtas_error_log*) ; 
 scalar_t__ ioei_rtas_buf ; 
 int /*<<< orphan*/  pseries_ioei_notifier_list ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct pseries_io_event *event;
	int rtas_rc;

	for (;;) {
		rtas_rc = FUNC3(ioei_check_exception_token, 6, 1, NULL,
				    RTAS_VECTOR_EXTERNAL_INTERRUPT,
				    FUNC4(irq),
				    RTAS_IO_EVENTS, 1 /* Time Critical */,
				    FUNC0(ioei_rtas_buf),
				    RTAS_DATA_BUF_SIZE);
		if (rtas_rc != 0)
			break;

		event = FUNC2((struct rtas_error_log *)ioei_rtas_buf);
		if (!event)
			continue;

		FUNC1(&pseries_ioei_notifier_list,
					   0, event);
	}
	return IRQ_HANDLED;
}