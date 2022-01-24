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
struct evbuffer_iovec {void* iov_base; size_t iov_len; } ;
struct evbuffer_chain {size_t off; struct evbuffer_chain* next; } ;
struct evbuffer {size_t total_len; size_t n_add_for_cb; struct evbuffer_chain** last_with_datap; struct evbuffer_chain* last; scalar_t__ freeze_end; } ;

/* Variables and functions */
 size_t FUNC0 (struct evbuffer_chain*) ; 
 scalar_t__ FUNC1 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 

int
FUNC6(struct evbuffer *buf,
    struct evbuffer_iovec *vec, int n_vecs)
{
	struct evbuffer_chain *chain, **firstchainp, **chainp;
	int result = -1;
	size_t added = 0;
	int i;

	FUNC2(buf);

	if (buf->freeze_end)
		goto done;
	if (n_vecs == 0) {
		result = 0;
		goto done;
	} else if (n_vecs == 1 &&
	    (buf->last && vec[0].iov_base == (void *)FUNC1(buf->last))) {
		/* The user only got or used one chain; it might not
		 * be the first one with space in it. */
		if ((size_t)vec[0].iov_len > (size_t)FUNC0(buf->last))
			goto done;
		buf->last->off += vec[0].iov_len;
		added = vec[0].iov_len;
		if (added)
			FUNC4(buf);
		goto okay;
	}

	/* Advance 'firstchain' to the first chain with space in it. */
	firstchainp = buf->last_with_datap;
	if (!*firstchainp)
		goto done;
	if (FUNC0(*firstchainp) == 0) {
		firstchainp = &(*firstchainp)->next;
	}

	chain = *firstchainp;
	/* pass 1: make sure that the pointers and lengths of vecs[] are in
	 * bounds before we try to commit anything. */
	for (i=0; i<n_vecs; ++i) {
		if (!chain)
			goto done;
		if (vec[i].iov_base != (void *)FUNC1(chain) ||
		    (size_t)vec[i].iov_len > FUNC0(chain))
			goto done;
		chain = chain->next;
	}
	/* pass 2: actually adjust all the chains. */
	chainp = firstchainp;
	for (i=0; i<n_vecs; ++i) {
		(*chainp)->off += vec[i].iov_len;
		added += vec[i].iov_len;
		if (vec[i].iov_len) {
			buf->last_with_datap = chainp;
		}
		chainp = &(*chainp)->next;
	}

okay:
	buf->total_len += added;
	buf->n_add_for_cb += added;
	result = 0;
	FUNC5(buf);

done:
	FUNC3(buf);
	return result;
}