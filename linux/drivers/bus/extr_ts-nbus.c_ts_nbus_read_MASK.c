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
typedef  int u16 ;
struct ts_nbus {int /*<<< orphan*/  lock; int /*<<< orphan*/  rdy; int /*<<< orphan*/  csn; int /*<<< orphan*/  txrx; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_NBUS_DIRECTION_IN ; 
 int /*<<< orphan*/  TS_NBUS_DIRECTION_OUT ; 
 int /*<<< orphan*/  TS_NBUS_WRITE_ADR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ts_nbus*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ts_nbus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ts_nbus*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct ts_nbus *ts_nbus, u8 adr, u16 *val)
{
	int ret, i;
	u8 byte;

	/* bus access must be atomic */
	FUNC2(&ts_nbus->lock);

	/* set the bus in read mode */
	FUNC1(ts_nbus->txrx, 0);

	/* write address */
	FUNC6(ts_nbus, TS_NBUS_WRITE_ADR, adr);

	/* set the data gpios direction as input before reading */
	FUNC5(ts_nbus, TS_NBUS_DIRECTION_IN);

	/* reading value MSB first */
	do {
		*val = 0;
		byte = 0;
		for (i = 1; i >= 0; i--) {
			/* read a byte from the bus, leave on error */
			ret = FUNC4(ts_nbus, &byte);
			if (ret < 0)
				goto err;

			/* append the byte read to the final value */
			*val |= byte << (i * 8);
		}
		FUNC1(ts_nbus->csn, 1);
		ret = FUNC0(ts_nbus->rdy);
	} while (ret);

err:
	/* restore the data gpios direction as output after reading */
	FUNC5(ts_nbus, TS_NBUS_DIRECTION_OUT);

	FUNC3(&ts_nbus->lock);

	return ret;
}