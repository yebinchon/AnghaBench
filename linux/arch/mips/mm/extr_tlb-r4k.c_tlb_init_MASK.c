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
struct TYPE_2__ {int tlbsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ current_cpu_data ; 
 int ntlb ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
	FUNC2();

	if (ntlb) {
		if (ntlb > 1 && ntlb <= current_cpu_data.tlbsize) {
			int wired = current_cpu_data.tlbsize - ntlb;
			FUNC4(wired);
			FUNC3(wired-1);
			FUNC1("Restricting TLB to %d entries\n", ntlb);
		} else
			FUNC1("Ignoring invalid argument ntlb=%d\n", ntlb);
	}

	FUNC0();
}