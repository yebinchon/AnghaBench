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
struct evbuffer_chain {int flags; scalar_t__ off; struct evbuffer_chain* next; scalar_t__ buffer_len; scalar_t__ misalign; } ;
struct evbuffer {struct evbuffer_chain* last; struct evbuffer_chain** last_with_datap; struct evbuffer_chain* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 scalar_t__ FUNC1 (struct evbuffer_chain*) ; 
 int EVBUFFER_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,struct evbuffer_chain*) ; 
 struct evbuffer_chain* FUNC6 (size_t) ; 

int
FUNC7(struct evbuffer *buf, size_t datlen, int n)
{
	struct evbuffer_chain *chain = buf->last, *tmp, *next;
	size_t avail;
	int used;

	FUNC0(buf);
	FUNC2(n >= 2);

	if (chain == NULL || (chain->flags & EVBUFFER_IMMUTABLE)) {
		/* There is no last chunk, or we can't touch the last chunk.
		 * Just add a new chunk. */
		chain = FUNC6(datlen);
		if (chain == NULL)
			return (-1);

		FUNC5(buf, chain);
		return (0);
	}

	used = 0; /* number of chains we're using space in. */
	avail = 0; /* how much space they have. */
	/* How many bytes can we stick at the end of buffer as it is?  Iterate
	 * over the chains at the end of the buffer, tring to see how much
	 * space we have in the first n. */
	for (chain = *buf->last_with_datap; chain; chain = chain->next) {
		if (chain->off) {
			size_t space = (size_t) FUNC1(chain);
			FUNC2(chain == *buf->last_with_datap);
			if (space) {
				avail += space;
				++used;
			}
		} else {
			/* No data in chain; realign it. */
			chain->misalign = 0;
			avail += chain->buffer_len;
			++used;
		}
		if (avail >= datlen) {
			/* There is already enough space.  Just return */
			return (0);
		}
		if (used == n)
			break;
	}

	/* There wasn't enough space in the first n chains with space in
	 * them. Either add a new chain with enough space, or replace all
	 * empty chains with one that has enough space, depending on n. */
	if (used < n) {
		/* The loop ran off the end of the chains before it hit n
		 * chains; we can add another. */
		FUNC2(chain == NULL);

		tmp = FUNC6(datlen - avail);
		if (tmp == NULL)
			return (-1);

		buf->last->next = tmp;
		buf->last = tmp;
		/* (we would only set last_with_data if we added the first
		 * chain. But if the buffer had no chains, we would have
		 * just allocated a new chain earlier) */
		return (0);
	} else {
		/* Nuke _all_ the empty chains. */
		int rmv_all = 0; /* True iff we removed last_with_data. */
		chain = *buf->last_with_datap;
		if (!chain->off) {
			FUNC2(chain == buf->first);
			rmv_all = 1;
			avail = 0;
		} else {
			/* can't overflow, since only mutable chains have
			 * huge misaligns. */
			avail = (size_t) FUNC1(chain);
			chain = chain->next;
		}


		for (; chain; chain = next) {
			next = chain->next;
			FUNC2(chain->off == 0);
			FUNC4(chain);
		}
		FUNC2(datlen >= avail);
		tmp = FUNC6(datlen - avail);
		if (tmp == NULL) {
			if (rmv_all) {
				FUNC3(buf);
			} else {
				buf->last = *buf->last_with_datap;
				(*buf->last_with_datap)->next = NULL;
			}
			return (-1);
		}

		if (rmv_all) {
			buf->first = buf->last = tmp;
			buf->last_with_datap = &buf->first;
		} else {
			(*buf->last_with_datap)->next = tmp;
			buf->last = tmp;
		}
		return (0);
	}
}