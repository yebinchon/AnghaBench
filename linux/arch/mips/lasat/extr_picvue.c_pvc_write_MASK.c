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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rs; int /*<<< orphan*/  rw; } ;

/* Variables and functions */
 int MODE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* picvue ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(u8 byte, int mode)
{
	u32 data = FUNC1();
	data &= ~picvue->rw;
	if (mode == MODE_DATA)
		data |= picvue->rs;
	else
		data &= ~picvue->rs;
	FUNC2(data);
	FUNC0(40);
	FUNC4(data, byte);
	if (mode == MODE_DATA)
		data &= ~picvue->rs;
	else
		data |= picvue->rs;
	FUNC2(data);
	FUNC3();
}