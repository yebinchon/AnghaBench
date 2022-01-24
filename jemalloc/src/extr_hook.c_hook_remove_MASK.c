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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  seq_hooks_t ;

/* Variables and functions */
 size_t HOOK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ config_debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hooks ; 
 int /*<<< orphan*/  hooks_mu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(tsdn_t *tsdn, void *opaque) {
	if (config_debug) {
		char *hooks_begin = (char *)&hooks[0];
		char *hooks_end = (char *)&hooks[HOOK_MAX];
		char *hook = (char *)opaque;
		FUNC0(hooks_begin <= hook && hook < hooks_end
		    && (hook - hooks_begin) % sizeof(seq_hooks_t) == 0);
	}
	FUNC2(tsdn, &hooks_mu);
	FUNC1((seq_hooks_t *)opaque);
	FUNC4(tsdn);
	FUNC3(tsdn, &hooks_mu);
}