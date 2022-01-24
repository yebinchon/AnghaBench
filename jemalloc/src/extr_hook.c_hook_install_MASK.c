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
typedef  int /*<<< orphan*/  hooks_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hooks_mu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *
FUNC4(tsdn_t *tsdn, hooks_t *to_install) {
	FUNC1(tsdn, &hooks_mu);
	void *ret = FUNC0(to_install);
	if (ret != NULL) {
		FUNC3(tsdn);
	}
	FUNC2(tsdn, &hooks_mu);
	return ret;
}