#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  size_t szind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * avail; } ;
typedef  TYPE_1__ base_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 size_t QUANTUM ; 
 size_t FUNC1 (size_t) ; 
 size_t SC_NSIZES ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,size_t,size_t) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (size_t) ; 

__attribute__((used)) static void *
FUNC9(tsdn_t *tsdn, base_t *base, size_t size, size_t alignment,
    size_t *esn) {
	alignment = FUNC1(alignment);
	size_t usize = FUNC0(size, alignment);
	size_t asize = usize + alignment - QUANTUM;

	extent_t *extent = NULL;
	FUNC6(tsdn, &base->mtx);
	for (szind_t i = FUNC8(asize); i < SC_NSIZES; i++) {
		extent = FUNC4(&base->avail[i]);
		if (extent != NULL) {
			/* Use existing space. */
			break;
		}
	}
	if (extent == NULL) {
		/* Try to allocate more space. */
		extent = FUNC2(tsdn, base, usize, alignment);
	}
	void *ret;
	if (extent == NULL) {
		ret = NULL;
		goto label_return;
	}

	ret = FUNC3(base, extent, usize, alignment);
	if (esn != NULL) {
		*esn = FUNC5(extent);
	}
label_return:
	FUNC7(tsdn, &base->mtx);
	return ret;
}