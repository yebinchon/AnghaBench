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
typedef  int /*<<< orphan*/  pmc ;
struct TYPE_3__ {size_t WorkingSetSize; } ;
typedef  TYPE_1__ PROCESS_MEMORY_COUNTERS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(size_t* rss) {
  HANDLE current_process;
  PROCESS_MEMORY_COUNTERS pmc;

  current_process = FUNC0();

  if (!FUNC2(current_process, &pmc, sizeof(pmc))) {
    return FUNC3(FUNC1());
  }

  *rss = pmc.WorkingSetSize;

  return 0;
}