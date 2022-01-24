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
typedef  scalar_t__ git_vector_cmp ;
struct TYPE_5__ {scalar_t__ _cmp; int /*<<< orphan*/ * contents; scalar_t__ length; scalar_t__ _alloc_size; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int FUNC6(git_vector *v, const git_vector *src, git_vector_cmp cmp)
{
	FUNC2(v && src);

	v->_alloc_size = 0;
	v->contents = NULL;
	v->_cmp = cmp ? cmp : src->_cmp;
	v->length = src->length;
	v->flags  = src->flags;
	if (cmp != src->_cmp)
		FUNC4(v, 0);

	if (src->length) {
		size_t bytes;
		FUNC1(&bytes, src->length, sizeof(void *));
		v->contents = FUNC3(bytes);
		FUNC0(v->contents);
		v->_alloc_size = src->length;
		FUNC5(v->contents, src->contents, bytes);
	}

	return 0;
}