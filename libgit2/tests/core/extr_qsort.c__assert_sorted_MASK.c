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
typedef  int /*<<< orphan*/  int8_t ;
typedef  scalar_t__ (* git__sort_r_cmp ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t,scalar_t__ (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *els, size_t n, size_t elsize, git__sort_r_cmp cmp)
{
	int8_t *p = els;

	FUNC1(p, n, elsize, cmp, NULL);
	while (n-- > 1) {
		FUNC0(cmp(p, p + elsize, NULL) <= 0);
		p += elsize;
	}
}