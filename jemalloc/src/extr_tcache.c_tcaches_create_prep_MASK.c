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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  tcache_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int MALLOCX_TCACHE_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tcaches ; 
 int /*<<< orphan*/ * tcaches_avail ; 
 int /*<<< orphan*/  tcaches_mtx ; 
 int tcaches_past ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(tsd_t *tsd) {
	bool err;

	FUNC2(FUNC4(tsd), &tcaches_mtx);

	if (tcaches == NULL) {
		tcaches = FUNC1(FUNC4(tsd), FUNC0(), sizeof(tcache_t *)
		    * (MALLOCX_TCACHE_MAX+1), CACHELINE);
		if (tcaches == NULL) {
			err = true;
			goto label_return;
		}
	}

	if (tcaches_avail == NULL && tcaches_past > MALLOCX_TCACHE_MAX) {
		err = true;
		goto label_return;
	}

	err = false;
label_return:
	FUNC3(FUNC4(tsd), &tcaches_mtx);
	return err;
}