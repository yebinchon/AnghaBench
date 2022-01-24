#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int handshake; scalar_t__ ack; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_ITER ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kExit ; 
 int /*<<< orphan*/  kSetAndTest ; 
 int /*<<< orphan*/  kTest ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int running ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* tbsync ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	int i, score, score2, old, min=0, max=5000, offset=1000;

	FUNC5("Software timebase sync\n");

	/* if this fails then this kernel won't work anyway... */
	tbsync = FUNC3( sizeof(*tbsync), GFP_KERNEL );
	FUNC4();
	running = 1;

	while (!tbsync->ack)
		FUNC1();

	FUNC5("Got ack\n");

	/* binary search */
	for (old = -1; old != offset ; offset = (min+max) / 2) {
		score = FUNC6(kSetAndTest, offset, NUM_ITER);

		FUNC5("score %d, offset %d\n", score, offset );

		if( score > 0 )
			max = offset;
		else
			min = offset;
		old = offset;
	}
	score = FUNC6(kSetAndTest, min, NUM_ITER);
	score2 = FUNC6(kSetAndTest, max, NUM_ITER);

	FUNC5("Min %d (score %d), Max %d (score %d)\n",
		 min, score, max, score2);
	score = FUNC0(score);
	score2 = FUNC0(score2);
	offset = (score < score2) ? min : max;

	/* guard against inaccurate mttb */
	for (i = 0; i < 10; i++) {
		FUNC6(kSetAndTest, offset, NUM_ITER/10);

		if ((score2 = FUNC6(kTest, offset, NUM_ITER)) < 0)
			score2 = -score2;
		if (score2 <= score || score2 < 20)
			break;
	}
	FUNC5("Final offset: %d (%d/%d)\n", offset, score2, NUM_ITER );

	/* exiting */
	tbsync->cmd = kExit;
	FUNC7();
	tbsync->handshake = 1;
	while (tbsync->ack)
		FUNC1();
	tbsync->handshake = 0;
	FUNC2(tbsync);
	tbsync = NULL;
	running = 0;
}