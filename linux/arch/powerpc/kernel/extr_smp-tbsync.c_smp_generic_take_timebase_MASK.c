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
typedef  int u64 ;
struct TYPE_2__ {int ack; int cmd; int tb; int /*<<< orphan*/  mark; scalar_t__ handshake; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int kExit ; 
 int kSetAndTest ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  running ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 TYPE_1__* tbsync ; 

void FUNC7(void)
{
	int cmd;
	u64 tb;
	unsigned long flags;

	FUNC3(flags);
	while (!running)
		FUNC0();
	FUNC5();

	for (;;) {
		tbsync->ack = 1;
		while (!tbsync->handshake)
			FUNC0();
		FUNC5();

		cmd = tbsync->cmd;
		tb = tbsync->tb;
		FUNC4();
		tbsync->ack = 0;
		if (cmd == kExit)
			break;

		while (tbsync->handshake)
			FUNC0();
		if (cmd == kSetAndTest)
			FUNC6(tb >> 32, tb & 0xfffffffful);
		FUNC1(tbsync->mark, -1);
	}
	FUNC2(flags);
}