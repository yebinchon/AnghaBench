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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int cmd; int handshake; scalar_t__ race_result; scalar_t__ ack; scalar_t__ mark; scalar_t__ tb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* tbsync ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(int cmd, long offset, int num)
{
	int i, score=0;
	u64 tb;
	u64 mark;

	tbsync->cmd = cmd;

	FUNC3();
	for (i = -3; i < num; ) {
		tb = FUNC2() + 400;
		tbsync->tb = tb + offset;
		tbsync->mark = mark = tb + 400;

		FUNC5();

		tbsync->handshake = 1;
		while (tbsync->ack)
			FUNC0();

		while (FUNC2() <= tb)
			FUNC0();
		tbsync->handshake = 0;
		FUNC1(mark, 1);

		while (!tbsync->ack)
			FUNC0();

		if (i++ > 0)
			score += tbsync->race_result;
	}
	FUNC4();
	return score;
}