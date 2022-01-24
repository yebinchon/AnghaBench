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
 int /*<<< orphan*/  ERR_TYPE_RTAS_LOG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RTAS_INTERNAL_ERROR ; 
 scalar_t__ RTAS_SEVERITY_ERROR_SYNC ; 
 int /*<<< orphan*/  RTAS_VECTOR_EXTERNAL_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  ras_check_exception_token ; 
 scalar_t__ ras_log_buf ; 
 int /*<<< orphan*/  ras_log_buf_lock ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rtas_error_log*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct rtas_error_log *rtas_elog;
	int status;
	int fatal;

	FUNC9(&ras_log_buf_lock);

	status = FUNC6(ras_check_exception_token, 6, 1, NULL,
			   RTAS_VECTOR_EXTERNAL_INTERRUPT,
			   FUNC11(irq),
			   RTAS_INTERNAL_ERROR, 1 /* Time Critical */,
			   FUNC0(&ras_log_buf),
				FUNC8());

	rtas_elog = (struct rtas_error_log *)ras_log_buf;

	if (status == 0 &&
	    FUNC7(rtas_elog) >= RTAS_SEVERITY_ERROR_SYNC)
		fatal = 1;
	else
		fatal = 0;

	/* format and print the extended information */
	FUNC3(ras_log_buf, ERR_TYPE_RTAS_LOG, fatal);

	if (fatal) {
		FUNC4("Fatal hardware error detected. Check RTAS error"
			 " log for details. Powering off immediately\n");
		FUNC1();
		FUNC2();
	} else {
		FUNC5("Recoverable hardware error detected\n");
	}

	FUNC10(&ras_log_buf_lock);
	return IRQ_HANDLED;
}