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
typedef  int /*<<< orphan*/  u32 ;
struct transaction {scalar_t__ rlen; scalar_t__ rdata; int /*<<< orphan*/  wdata; scalar_t__ wlen; } ;
struct acpi_ec {int /*<<< orphan*/  mutex; scalar_t__ global_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EC_UDELAY_GLK ; 
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct acpi_ec*,struct transaction*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct acpi_ec *ec, struct transaction *t)
{
	int status;
	u32 glk;

	if (!ec || (!t) || (t->wlen && !t->wdata) || (t->rlen && !t->rdata))
		return -EINVAL;
	if (t->rdata)
		FUNC4(t->rdata, 0, t->rlen);

	FUNC5(&ec->mutex);
	if (ec->global_lock) {
		status = FUNC1(ACPI_EC_UDELAY_GLK, &glk);
		if (FUNC0(status)) {
			status = -ENODEV;
			goto unlock;
		}
	}

	status = FUNC2(ec, t);

	if (ec->global_lock)
		FUNC3(glk);
unlock:
	FUNC6(&ec->mutex);
	return status;
}