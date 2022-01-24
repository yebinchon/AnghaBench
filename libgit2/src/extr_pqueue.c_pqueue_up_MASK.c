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
struct TYPE_4__ {scalar_t__ (* _cmp ) (void*,void*) ;void** contents; } ;
typedef  TYPE_1__ git_pqueue ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 void* FUNC1 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC2 (void*,void*) ; 

__attribute__((used)) static void FUNC3(git_pqueue *pq, size_t el)
{
	size_t parent_el = FUNC0(el);
	void *kid = FUNC1(pq, el);

	while (el > 0) {
		void *parent = pq->contents[parent_el];

		if (pq->_cmp(parent, kid) <= 0)
			break;

		pq->contents[el] = parent;

		el = parent_el;
		parent_el = FUNC0(el);
	}

	pq->contents[el] = kid;
}