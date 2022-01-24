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
struct tsort_store {scalar_t__ (* cmp ) (void*,void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  payload; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int,int) ; 
 scalar_t__ FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(
	void **dst, ssize_t start, ssize_t size, struct tsort_store *store)
{
	ssize_t curr = start + 2;

	if (size - start == 1)
		return 1;

	if (start >= size - 2) {
		if (store->cmp(dst[size - 2], dst[size - 1], store->payload) > 0) {
			void *tmp = dst[size - 1];
			dst[size - 1] = dst[size - 2];
			dst[size - 2] = tmp;
		}

		return 2;
	}

	if (store->cmp(dst[start], dst[start + 1], store->payload) <= 0) {
		while (curr < size - 1 &&
				store->cmp(dst[curr - 1], dst[curr], store->payload) <= 0)
			curr++;

		return curr - start;
	} else {
		while (curr < size - 1 &&
				store->cmp(dst[curr - 1], dst[curr], store->payload) > 0)
			curr++;

		/* reverse in-place */
		FUNC0(dst, start, curr - 1);
		return curr - start;
	}
}