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
struct TYPE_3__ {long flags; int hbits; int hsize; long alloc; scalar_t__ count; int /*<<< orphan*/  ncha; int /*<<< orphan*/ ** rchash; int /*<<< orphan*/ ** rcrecs; } ;
typedef  TYPE_1__ xdlclassifier_t ;
typedef  int /*<<< orphan*/  xdlclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(xdlclassifier_t *cf, long size, long flags) {
	cf->flags = flags;

	cf->hbits = FUNC4((unsigned int) size);
	cf->hsize = 1 << cf->hbits;

	if (FUNC2(&cf->ncha, sizeof(xdlclass_t), size / 4 + 1) < 0) {

		return -1;
	}
	if (!(cf->rchash = (xdlclass_t **) FUNC5(cf->hsize * sizeof(xdlclass_t *)))) {

		FUNC1(&cf->ncha);
		return -1;
	}
	FUNC0(cf->rchash, 0, cf->hsize * sizeof(xdlclass_t *));

	cf->alloc = size;
	if (!(cf->rcrecs = (xdlclass_t **) FUNC5(cf->alloc * sizeof(xdlclass_t *)))) {

		FUNC3(cf->rchash);
		FUNC1(&cf->ncha);
		return -1;
	}

	cf->count = 0;

	return 0;
}