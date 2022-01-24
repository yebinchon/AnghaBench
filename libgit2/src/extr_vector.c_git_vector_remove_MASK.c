#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t length; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int FUNC2(git_vector *v, size_t idx)
{
	size_t shift_count;

	FUNC0(v);

	if (idx >= v->length)
		return GIT_ENOTFOUND;

	shift_count = v->length - idx - 1;

	if (shift_count)
		FUNC1(&v->contents[idx], &v->contents[idx + 1],
			shift_count * sizeof(void *));

	v->length--;
	return 0;
}