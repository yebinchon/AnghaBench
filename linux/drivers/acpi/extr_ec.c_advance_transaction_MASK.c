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
typedef  int u8 ;
struct transaction {int flags; scalar_t__ wlen; scalar_t__ wi; scalar_t__ rlen; scalar_t__ ri; int* rdata; scalar_t__ command; scalar_t__ irq_count; int /*<<< orphan*/ * wdata; } ;
struct acpi_ec {int /*<<< orphan*/  wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_pending_queries; struct transaction* curr; } ;

/* Variables and functions */
 int ACPI_EC_COMMAND_COMPLETE ; 
 int ACPI_EC_COMMAND_POLL ; 
 scalar_t__ ACPI_EC_COMMAND_QUERY ; 
 scalar_t__ ACPI_EC_EVT_TIMING_EVENT ; 
 int ACPI_EC_FLAG_IBF ; 
 int ACPI_EC_FLAG_OBF ; 
 int ACPI_EC_FLAG_SCI ; 
 int /*<<< orphan*/  EC_FLAGS_QUERY_GUARDING ; 
 scalar_t__ EC_FLAGS_QUERY_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_ec*) ; 
 int FUNC4 (struct acpi_ec*) ; 
 int FUNC5 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_ec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_ec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ec_event_clearing ; 
 scalar_t__ ec_storm_threshold ; 
 int /*<<< orphan*/  FUNC12 (struct acpi_ec*,int) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct acpi_ec *ec)
{
	struct transaction *t;
	u8 status;
	bool wakeup = false;

	FUNC11("%s (%d)", FUNC13() ? "IRQ" : "TASK",
		   FUNC14());
	/*
	 * By always clearing STS before handling all indications, we can
	 * ensure a hardware STS 0->1 change after this clearing can always
	 * trigger a GPE interrupt.
	 */
	FUNC0(ec);
	status = FUNC5(ec);
	t = ec->curr;
	/*
	 * Another IRQ or a guarded polling mode advancement is detected,
	 * the next QR_EC submission is then allowed.
	 */
	if (!t || !(t->flags & ACPI_EC_COMMAND_POLL)) {
		if (ec_event_clearing == ACPI_EC_EVT_TIMING_EVENT &&
		    (!ec->nr_pending_queries ||
		     FUNC15(EC_FLAGS_QUERY_GUARDING, &ec->flags))) {
			FUNC9(EC_FLAGS_QUERY_GUARDING, &ec->flags);
			FUNC2(ec);
		}
	}
	if (!t)
		goto err;
	if (t->flags & ACPI_EC_COMMAND_POLL) {
		if (t->wlen > t->wi) {
			if ((status & ACPI_EC_FLAG_IBF) == 0)
				FUNC8(ec, t->wdata[t->wi++]);
			else
				goto err;
		} else if (t->rlen > t->ri) {
			if ((status & ACPI_EC_FLAG_OBF) == 1) {
				t->rdata[t->ri++] = FUNC4(ec);
				if (t->rlen == t->ri) {
					FUNC12(ec, ACPI_EC_COMMAND_COMPLETE);
					if (t->command == ACPI_EC_COMMAND_QUERY)
						FUNC10("Command(%s) completed by hardware",
							   FUNC1(ACPI_EC_COMMAND_QUERY));
					wakeup = true;
				}
			} else
				goto err;
		} else if (t->wlen == t->wi &&
			   (status & ACPI_EC_FLAG_IBF) == 0) {
			FUNC12(ec, ACPI_EC_COMMAND_COMPLETE);
			wakeup = true;
		}
		goto out;
	} else {
		if (EC_FLAGS_QUERY_HANDSHAKE &&
		    !(status & ACPI_EC_FLAG_SCI) &&
		    (t->command == ACPI_EC_COMMAND_QUERY)) {
			FUNC12(ec, ACPI_EC_COMMAND_POLL);
			t->rdata[t->ri++] = 0x00;
			FUNC12(ec, ACPI_EC_COMMAND_COMPLETE);
			FUNC10("Command(%s) completed by software",
				   FUNC1(ACPI_EC_COMMAND_QUERY));
			wakeup = true;
		} else if ((status & ACPI_EC_FLAG_IBF) == 0) {
			FUNC7(ec, t->command);
			FUNC12(ec, ACPI_EC_COMMAND_POLL);
		} else
			goto err;
		goto out;
	}
err:
	/*
	 * If SCI bit is set, then don't think it's a false IRQ
	 * otherwise will take a not handled IRQ as a false one.
	 */
	if (!(status & ACPI_EC_FLAG_SCI)) {
		if (FUNC13() && t) {
			if (t->irq_count < ec_storm_threshold)
				++t->irq_count;
			/* Allow triggering on 0 threshold */
			if (t->irq_count == ec_storm_threshold)
				FUNC3(ec);
		}
	}
out:
	if (status & ACPI_EC_FLAG_SCI)
		FUNC6(ec);
	if (wakeup && FUNC13())
		FUNC16(&ec->wait);
}