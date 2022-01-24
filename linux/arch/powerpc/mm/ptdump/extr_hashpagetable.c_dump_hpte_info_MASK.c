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
typedef  int /*<<< orphan*/  u64 ;
struct pg_state {int /*<<< orphan*/  seq; TYPE_1__* marker; } ;
struct TYPE_2__ {unsigned long start_address; unsigned long name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pg_state*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pg_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r_flag_array ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  v_flag_array ; 

__attribute__((used)) static void FUNC6(struct pg_state *st, unsigned long ea, u64 v, u64 r,
		unsigned long rpn, int bps, int aps, unsigned long lp)
{
	int aps_index;

	while (ea >= st->marker[1].start_address) {
		st->marker++;
		FUNC4(st->seq, "---[ %s ]---\n", st->marker->name);
	}
	FUNC4(st->seq, "0x%lx:\t", ea);
	FUNC4(st->seq, "AVPN:%llx\t", FUNC1(v));
	FUNC3(st, v_flag_array, v, FUNC0(v_flag_array));
	FUNC4(st->seq, "  rpn: %lx\t", rpn);
	FUNC3(st, r_flag_array, r, FUNC0(r_flag_array));

	FUNC2(st, bps, "base");
	aps_index = FUNC2(st, aps, "actual");
	if (aps_index != 2)
		FUNC4(st->seq, "LP enc: %lx", lp);
	FUNC5(st->seq, '\n');
}