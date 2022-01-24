#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; scalar_t__ length; scalar_t__ _alloc_size; scalar_t__ (* _cmp ) (void*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ git_pqueue ;

/* Variables and functions */
 int GIT_PQUEUE_FIXED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ) ; 

int FUNC5(git_pqueue *pq, void *item)
{
	int error = 0;

	/* if heap is full, pop the top element if new one should replace it */
	if ((pq->flags & GIT_PQUEUE_FIXED_SIZE) != 0 &&
		pq->length >= pq->_alloc_size)
	{
		/* skip this item if below min item in heap or if
		 * we do not have a comparison function */
		if (!pq->_cmp || pq->_cmp(item, FUNC1(pq, 0)) <= 0)
			return 0;
		/* otherwise remove the min item before inserting new */
		(void)FUNC0(pq);
	}

	if (!(error = FUNC2(pq, item)) && pq->_cmp)
		FUNC3(pq, pq->length - 1);

	return error;
}