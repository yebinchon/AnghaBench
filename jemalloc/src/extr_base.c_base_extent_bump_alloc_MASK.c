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
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  base_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,void*,size_t) ; 

__attribute__((used)) static void *
FUNC2(base_t *base, extent_t *extent, size_t size,
    size_t alignment) {
	void *ret;
	size_t gap_size;

	ret = FUNC0(extent, &gap_size, size, alignment);
	FUNC1(base, extent, gap_size, ret, size);
	return ret;
}