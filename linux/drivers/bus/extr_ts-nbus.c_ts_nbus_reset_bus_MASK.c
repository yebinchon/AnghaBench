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
struct ts_nbus {int /*<<< orphan*/  ale; int /*<<< orphan*/  strobe; int /*<<< orphan*/  csn; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  info; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* values ; 

__attribute__((used)) static void FUNC3(struct ts_nbus *ts_nbus)
{
	FUNC0(values, 8);

	values[0] = 0;

	FUNC1(8, ts_nbus->data->desc,
				       ts_nbus->data->info, values);
	FUNC2(ts_nbus->csn, 0);
	FUNC2(ts_nbus->strobe, 0);
	FUNC2(ts_nbus->ale, 0);
}