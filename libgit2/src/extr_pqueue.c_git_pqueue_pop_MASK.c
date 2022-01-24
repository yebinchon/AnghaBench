#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void** contents; scalar_t__ _cmp; } ;
typedef  TYPE_1__ git_pqueue ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void *FUNC5(git_pqueue *pq)
{
	void *rval;

	if (!pq->_cmp) {
		rval = FUNC2(pq);
	} else {
		rval = FUNC0(pq, 0);
	}

	if (FUNC1(pq) > 1 && pq->_cmp) {
		/* move last item to top of heap, shrink, and push item down */
		pq->contents[0] = FUNC2(pq);
		FUNC3(pq);
		FUNC4(pq, 0);
	} else {
		/* all we need to do is shrink the heap in this case */
		FUNC3(pq);
	}

	return rval;
}