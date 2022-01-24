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
struct evbuffer_chain {scalar_t__ off; scalar_t__ misalign; scalar_t__ buffer; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain** last_with_datap; struct evbuffer_chain* last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int FUNC1 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 struct evbuffer_chain* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct evbuffer *src, struct evbuffer_chain **first,
		struct evbuffer_chain **last)
{
	struct evbuffer_chain *chain, **pinned;

	FUNC0(src);

	if (!FUNC3(src)) {
		*first = *last = NULL;
		return 0;
	}

	pinned = src->last_with_datap;
	if (!FUNC1(*pinned))
		pinned = &(*pinned)->next;
	FUNC2(FUNC1(*pinned));
	chain = *first = *pinned;
	*last = src->last;

	/* If there's data in the first pinned chain, we need to allocate
	 * a new chain and copy the data over. */
	if (chain->off) {
		struct evbuffer_chain *tmp;

		FUNC2(pinned == src->last_with_datap);
		tmp = FUNC4(chain->off);
		if (!tmp)
			return -1;
		FUNC5(tmp->buffer, chain->buffer + chain->misalign,
			chain->off);
		tmp->off = chain->off;
		*src->last_with_datap = tmp;
		src->last = tmp;
		chain->misalign += chain->off;
		chain->off = 0;
	} else {
		src->last = *src->last_with_datap;
		*pinned = NULL;
	}

	return 0;
}