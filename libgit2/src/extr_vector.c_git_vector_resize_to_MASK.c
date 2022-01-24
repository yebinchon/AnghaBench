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
struct TYPE_4__ {size_t _alloc_size; size_t length; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,size_t) ; 

int FUNC2(git_vector *v, size_t new_length)
{
	if (new_length > v->_alloc_size &&
		FUNC1(v, new_length) < 0)
		return -1;

	if (new_length > v->length)
		FUNC0(&v->contents[v->length], 0,
			sizeof(void *) * (new_length - v->length));

	v->length = new_length;

	return 0;
}