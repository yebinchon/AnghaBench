#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int tlbsize; } ;

/* Variables and functions */
 unsigned long FUNC0 (TYPE_1__*) ; 
 TYPE_1__ current_cpu_data ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(int entry)
{
	unsigned long old_ctx;

	old_ctx = FUNC1() & FUNC0(&current_cpu_data);
	FUNC4(0);
	while (entry < current_cpu_data.tlbsize) {
		FUNC5(entry << 8);
		FUNC3((entry | 0x80000) << 12);
		entry++;				/* BARRIER */
		FUNC2();
	}
	FUNC3(old_ctx);
}