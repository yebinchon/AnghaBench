#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC2(void) {
	size_t lg_prof_sample;
	size_t sz = sizeof(size_t);

	FUNC0(FUNC1("prof.lg_sample", (void *)&lg_prof_sample, &sz,
	    NULL, 0), 0,
	    "Unexpected mallctl failure while reading profiling sample rate");
	return lg_prof_sample;
}