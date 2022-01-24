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
typedef  int /*<<< orphan*/  hashsig_t ;
struct TYPE_5__ {int size; int asize; scalar_t__ (* cmp ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * values; } ;
typedef  TYPE_1__ hashsig_heap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(hashsig_heap *h, hashsig_t val)
{
	/* if heap is not full, insert new element */
	if (h->size < h->asize) {
		h->values[h->size++] = val;
		FUNC1(h, h->size - 1);
	}

	/* if heap is full, pop top if new element should replace it */
	else if (h->cmp(&val, &h->values[0], NULL) > 0) {
		h->size--;
		h->values[0] = h->values[h->size];
		FUNC0(h, 0);
	}

}