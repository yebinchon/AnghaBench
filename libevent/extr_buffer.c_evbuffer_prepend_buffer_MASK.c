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
struct evbuffer_chain {int dummy; } ;
struct evbuffer {size_t total_len; size_t n_del_for_cb; size_t n_add_for_cb; int /*<<< orphan*/  first; scalar_t__ freeze_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,struct evbuffer*) ; 
 scalar_t__ FUNC4 (struct evbuffer*,struct evbuffer_chain**,struct evbuffer_chain**) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,struct evbuffer_chain*,struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct evbuffer*) ; 

int
FUNC8(struct evbuffer *outbuf, struct evbuffer *inbuf)
{
	struct evbuffer_chain *pinned, *last;
	size_t in_total_len, out_total_len;
	int result = 0;

	FUNC1(inbuf, outbuf);

	in_total_len = inbuf->total_len;
	out_total_len = outbuf->total_len;

	if (!in_total_len || inbuf == outbuf)
		goto done;

	if (outbuf->freeze_start || inbuf->freeze_start) {
		result = -1;
		goto done;
	}

	if (FUNC4(inbuf, &pinned, &last) < 0) {
		result = -1;
		goto done;
	}

	if (out_total_len == 0) {
		/* There might be an empty chain at the start of outbuf; free
		 * it. */
		FUNC6(outbuf->first);
		FUNC0(outbuf, inbuf);
	} else {
		FUNC3(outbuf, inbuf);
	}

	FUNC5(inbuf, pinned, last);

	inbuf->n_del_for_cb += in_total_len;
	outbuf->n_add_for_cb += in_total_len;

	FUNC7(inbuf);
	FUNC7(outbuf);
done:
	FUNC2(inbuf, outbuf);
	return result;
}