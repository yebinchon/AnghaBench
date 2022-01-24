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
struct TYPE_2__ {int* cur; int /*<<< orphan*/  value64; int /*<<< orphan*/  last; } ;

/* Variables and functions */
 TYPE_1__** GH ; 
 scalar_t__ GH_N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

__attribute__((used)) static int *FUNC1 (void) {
	if (verbosity >= 4) {
		FUNC0 (stderr, "get_gather_heap_head: GH->last = %d (value64 = %016x)\n", GH[1]->last, GH[1]->value64);
	}
  return GH_N ? GH[1]->cur : 0;
}