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
struct TYPE_3__ {size_t length; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC4(git_vector *v, size_t idx, size_t remove_len)
{
	size_t new_length = v->length - remove_len;
	size_t end_idx = 0;
	
	FUNC0(remove_len > 0);

	if (FUNC1(&end_idx, idx, remove_len))
		FUNC0(0);

	FUNC0(end_idx <= v->length);

	if (end_idx < v->length)
		FUNC2(&v->contents[idx], &v->contents[end_idx],
			sizeof(void *) * (v->length - end_idx));

	FUNC3(&v->contents[new_length], 0, sizeof(void *) * remove_len);

	v->length = new_length;
	return 0;
}