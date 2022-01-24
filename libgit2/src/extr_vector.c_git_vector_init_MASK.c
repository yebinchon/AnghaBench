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
typedef  int /*<<< orphan*/  git_vector_cmp ;
struct TYPE_5__ {int /*<<< orphan*/ * contents; int /*<<< orphan*/  flags; scalar_t__ length; int /*<<< orphan*/  _cmp; scalar_t__ _alloc_size; } ;
typedef  TYPE_1__ git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_VECTOR_SORTED ; 
 int /*<<< orphan*/  MIN_ALLOCSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC3(git_vector *v, size_t initial_size, git_vector_cmp cmp)
{
	FUNC0(v);

	v->_alloc_size = 0;
	v->_cmp = cmp;
	v->length = 0;
	v->flags = GIT_VECTOR_SORTED;
	v->contents = NULL;

	return FUNC2(v, FUNC1(initial_size, MIN_ALLOCSIZE));
}