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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOW_SENSOR_INDEX ; 
 int /*<<< orphan*/  EPOW_SENSOR_TOKEN ; 
 int /*<<< orphan*/  ERR_TYPE_RTAS_LOG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RTAS_EPOW_WARNING ; 
 int /*<<< orphan*/  RTAS_VECTOR_EXTERNAL_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ras_check_exception_token ; 
 scalar_t__ ras_log_buf ; 
 int /*<<< orphan*/  ras_log_buf_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtas_error_log*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	int status;
	int state;
	int critical;

	status = FUNC4(EPOW_SENSOR_TOKEN, EPOW_SENSOR_INDEX,
				      &state);

	if (state > 3)
		critical = 1;		/* Time Critical */
	else
		critical = 0;

	FUNC6(&ras_log_buf_lock);

	status = FUNC2(ras_check_exception_token, 6, 1, NULL,
			   RTAS_VECTOR_EXTERNAL_INTERRUPT,
			   FUNC8(irq),
			   RTAS_EPOW_WARNING,
			   critical, FUNC0(&ras_log_buf),
				FUNC3());

	FUNC1(ras_log_buf, ERR_TYPE_RTAS_LOG, 0);

	FUNC5((struct rtas_error_log *)ras_log_buf);

	FUNC7(&ras_log_buf_lock);
	return IRQ_HANDLED;
}