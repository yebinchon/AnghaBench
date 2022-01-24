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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ts_nbus {int /*<<< orphan*/  lock; int /*<<< orphan*/  csn; int /*<<< orphan*/  rdy; int /*<<< orphan*/  txrx; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_NBUS_WRITE_ADR ; 
 int /*<<< orphan*/  TS_NBUS_WRITE_VAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ts_nbus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct ts_nbus *ts_nbus, u8 adr, u16 val)
{
	int i;

	/* bus access must be atomic */
	FUNC2(&ts_nbus->lock);

	/* set the bus in write mode */
	FUNC1(ts_nbus->txrx, 1);

	/* write address */
	FUNC4(ts_nbus, TS_NBUS_WRITE_ADR, adr);

	/* writing value MSB first */
	for (i = 1; i >= 0; i--)
		FUNC4(ts_nbus, TS_NBUS_WRITE_VAL, (u8)(val >> (i * 8)));

	/* wait for completion */
	FUNC1(ts_nbus->csn, 1);
	while (FUNC0(ts_nbus->rdy) != 0) {
		FUNC1(ts_nbus->csn, 0);
		FUNC1(ts_nbus->csn, 1);
	}

	FUNC3(&ts_nbus->lock);

	return 0;
}