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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_2__ {size_t nregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* bin_infos ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,void const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(tsdn_t *tsdn, const void *ptr,
    size_t *nfree, size_t *nregs, size_t *size) {
	FUNC0(ptr != NULL && nfree != NULL && nregs != NULL && size != NULL);

	const extent_t *extent = FUNC6(tsdn, ptr);
	if (FUNC7(extent == NULL)) {
		*nfree = *nregs = *size = 0;
		return;
	}

	*size = FUNC2(extent);
	if (!FUNC3(extent)) {
		*nfree = 0;
		*nregs = 1;
	} else {
		*nfree = FUNC1(extent);
		*nregs = bin_infos[FUNC4(extent)].nregs;
		FUNC0(*nfree <= *nregs);
		FUNC0(*nfree * FUNC5(extent) <= *size);
	}
}