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
struct text_poke_loc {char* addr; int len; char const* opcode; } ;
typedef  int /*<<< orphan*/  int3 ;
struct TYPE_2__ {unsigned int nr_entries; struct text_poke_loc* vec; } ;

/* Variables and functions */
 TYPE_1__ bp_patching ; 
 int /*<<< orphan*/  do_sync_core ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  text_mutex ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(struct text_poke_loc *tp, unsigned int nr_entries)
{
	int patched_all_but_first = 0;
	unsigned char int3 = 0xcc;
	unsigned int i;

	FUNC0(&text_mutex);

	bp_patching.vec = tp;
	bp_patching.nr_entries = nr_entries;

	/*
	 * Corresponding read barrier in int3 notifier for making sure the
	 * nr_entries and handler are correctly ordered wrt. patching.
	 */
	FUNC2();

	/*
	 * First step: add a int3 trap to the address that will be patched.
	 */
	for (i = 0; i < nr_entries; i++)
		FUNC3(tp[i].addr, &int3, sizeof(int3));

	FUNC1(do_sync_core, NULL, 1);

	/*
	 * Second step: update all but the first byte of the patched range.
	 */
	for (i = 0; i < nr_entries; i++) {
		if (tp[i].len - sizeof(int3) > 0) {
			FUNC3((char *)tp[i].addr + sizeof(int3),
				  (const char *)tp[i].opcode + sizeof(int3),
				  tp[i].len - sizeof(int3));
			patched_all_but_first++;
		}
	}

	if (patched_all_but_first) {
		/*
		 * According to Intel, this core syncing is very likely
		 * not necessary and we'd be safe even without it. But
		 * better safe than sorry (plus there's not only Intel).
		 */
		FUNC1(do_sync_core, NULL, 1);
	}

	/*
	 * Third step: replace the first byte (int3) by the first byte of
	 * replacing opcode.
	 */
	for (i = 0; i < nr_entries; i++)
		FUNC3(tp[i].addr, tp[i].opcode, sizeof(int3));

	FUNC1(do_sync_core, NULL, 1);
	/*
	 * sync_core() implies an smp_mb() and orders this store against
	 * the writing of the new instruction.
	 */
	bp_patching.vec = NULL;
	bp_patching.nr_entries = 0;
}