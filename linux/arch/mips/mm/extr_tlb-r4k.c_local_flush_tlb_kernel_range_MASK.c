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
struct TYPE_2__ {int tlbsize; scalar_t__ tlbsizeftlbsets; } ;

/* Variables and functions */
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (int) ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(unsigned long start, unsigned long end)
{
	unsigned long size, flags;

	FUNC6(flags);
	size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;
	size = (size + 1) >> 1;
	if (size <= (current_cpu_data.tlbsizeftlbsets ?
		     current_cpu_data.tlbsize / 8 :
		     current_cpu_data.tlbsize / 2)) {
		int pid = FUNC8();

		start &= (PAGE_MASK << 1);
		end += ((PAGE_SIZE << 1) - 1);
		end &= (PAGE_MASK << 1);
		FUNC3();

		while (start < end) {
			int idx;

			FUNC14(start);
			start += (PAGE_SIZE << 1);
			FUNC7();
			FUNC10();
			FUNC11();
			idx = FUNC9();
			FUNC15(0);
			FUNC16(0);
			if (idx < 0)
				continue;
			/* Make sure all entries differ. */
			FUNC14(FUNC0(idx));
			FUNC7();
			FUNC12();
		}
		FUNC13();
		FUNC14(pid);
		FUNC2();
	} else {
		FUNC4();
	}
	FUNC1();
	FUNC5(flags);
}