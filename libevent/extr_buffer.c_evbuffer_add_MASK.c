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
struct evbuffer_chain {int flags; scalar_t__ misalign; size_t buffer_len; size_t off; scalar_t__ buffer; } ;
struct evbuffer {size_t total_len; size_t n_add_for_cb; struct evbuffer_chain** last_with_datap; struct evbuffer_chain* last; scalar_t__ freeze_end; } ;
typedef  scalar_t__ ev_uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer_chain*) ; 
 scalar_t__ EVBUFFER_CHAIN_MAX ; 
 int EVBUFFER_CHAIN_MAX_AUTO_SIZE ; 
 int EVBUFFER_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t EV_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,struct evbuffer_chain*) ; 
 struct evbuffer_chain* FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (struct evbuffer_chain*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,unsigned char const*,size_t) ; 

int
FUNC10(struct evbuffer *buf, const void *data_in, size_t datlen)
{
	struct evbuffer_chain *chain, *tmp;
	const unsigned char *data = data_in;
	size_t remain, to_alloc;
	int result = -1;

	FUNC1(buf);

	if (buf->freeze_end) {
		goto done;
	}
	/* Prevent buf->total_len overflow */
	if (datlen > EV_SIZE_MAX - buf->total_len) {
		goto done;
	}

	if (*buf->last_with_datap == NULL) {
		chain = buf->last;
	} else {
		chain = *buf->last_with_datap;
	}

	/* If there are no chains allocated for this buffer, allocate one
	 * big enough to hold all the data. */
	if (chain == NULL) {
		chain = FUNC6(datlen);
		if (!chain)
			goto done;
		FUNC5(buf, chain);
	}

	if ((chain->flags & EVBUFFER_IMMUTABLE) == 0) {
		/* Always true for mutable buffers */
		FUNC3(chain->misalign >= 0 &&
		    (ev_uint64_t)chain->misalign <= EVBUFFER_CHAIN_MAX);
		remain = chain->buffer_len - (size_t)chain->misalign - chain->off;
		if (remain >= datlen) {
			/* there's enough space to hold all the data in the
			 * current last chain */
			FUNC9(chain->buffer + chain->misalign + chain->off,
			    data, datlen);
			chain->off += datlen;
			buf->total_len += datlen;
			buf->n_add_for_cb += datlen;
			goto out;
		} else if (!FUNC0(chain) &&
		    FUNC7(chain, datlen)) {
			/* we can fit the data into the misalignment */
			FUNC4(chain);

			FUNC9(chain->buffer + chain->off, data, datlen);
			chain->off += datlen;
			buf->total_len += datlen;
			buf->n_add_for_cb += datlen;
			goto out;
		}
	} else {
		/* we cannot write any data to the last chain */
		remain = 0;
	}

	/* we need to add another chain */
	to_alloc = chain->buffer_len;
	if (to_alloc <= EVBUFFER_CHAIN_MAX_AUTO_SIZE/2)
		to_alloc <<= 1;
	if (datlen > to_alloc)
		to_alloc = datlen;
	tmp = FUNC6(to_alloc);
	if (tmp == NULL)
		goto done;

	if (remain) {
		FUNC9(chain->buffer + chain->misalign + chain->off,
		    data, remain);
		chain->off += remain;
		buf->total_len += remain;
		buf->n_add_for_cb += remain;
	}

	data += remain;
	datlen -= remain;

	FUNC9(tmp->buffer, data, datlen);
	tmp->off = datlen;
	FUNC5(buf, tmp);
	buf->n_add_for_cb += datlen;

out:
	FUNC8(buf);
	result = 0;
done:
	FUNC2(buf);
	return result;
}