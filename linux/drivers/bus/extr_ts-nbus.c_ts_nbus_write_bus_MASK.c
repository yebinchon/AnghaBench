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
struct ts_nbus {int /*<<< orphan*/  ale; } ;

/* Variables and functions */
 int TS_NBUS_WRITE_ADR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ts_nbus*) ; 
 int /*<<< orphan*/  FUNC2 (struct ts_nbus*) ; 
 int /*<<< orphan*/  FUNC3 (struct ts_nbus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ts_nbus *ts_nbus, int cmd, u8 val)
{
	FUNC1(ts_nbus);

	if (cmd == TS_NBUS_WRITE_ADR)
		FUNC0(ts_nbus->ale, 1);

	FUNC3(ts_nbus, val);
	FUNC2(ts_nbus);
}