#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pos_in_chain; int /*<<< orphan*/ * chain; } ;
struct evbuffer_ptr {scalar_t__ pos; TYPE_1__ internal_; } ;
struct evbuffer {int /*<<< orphan*/ * first; } ;
typedef  int /*<<< orphan*/  it ;
typedef  scalar_t__ ev_ssize_t ;
typedef  enum evbuffer_eol_style { ____Placeholder_evbuffer_eol_style } evbuffer_eol_style ;

/* Variables and functions */
#define  EVBUFFER_EOL_ANY 132 
#define  EVBUFFER_EOL_CRLF 131 
#define  EVBUFFER_EOL_CRLF_STRICT 130 
#define  EVBUFFER_EOL_LF 129 
#define  EVBUFFER_EOL_NUL 128 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer_ptr*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer_ptr*) ; 
 char FUNC4 (struct evbuffer_ptr*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,struct evbuffer_ptr*,int) ; 
 struct evbuffer_ptr FUNC6 (struct evbuffer*,char*,int,struct evbuffer_ptr*) ; 
 int /*<<< orphan*/  FUNC7 (struct evbuffer_ptr*,char) ; 
 size_t FUNC8 (struct evbuffer_ptr*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct evbuffer_ptr*,struct evbuffer_ptr*,int) ; 

struct evbuffer_ptr
FUNC10(struct evbuffer *buffer,
    struct evbuffer_ptr *start, size_t *eol_len_out,
    enum evbuffer_eol_style eol_style)
{
	struct evbuffer_ptr it, it2;
	size_t extra_drain = 0;
	int ok = 0;

	/* Avoid locking in trivial edge cases */
	if (start && start->internal_.chain == NULL) {
		FUNC2(&it);
		if (eol_len_out)
			*eol_len_out = extra_drain;
		return it;
	}

	FUNC0(buffer);

	if (start) {
		FUNC9(&it, start, sizeof(it));
	} else {
		it.pos = 0;
		it.internal_.chain = buffer->first;
		it.internal_.pos_in_chain = 0;
	}

	/* the eol_style determines our first stop character and how many
	 * characters we are going to drain afterwards. */
	switch (eol_style) {
	case EVBUFFER_EOL_ANY:
		if (FUNC3(&it) < 0)
			goto done;
		FUNC9(&it2, &it, sizeof(it));
		extra_drain = FUNC8(&it2, "\r\n");
		break;
	case EVBUFFER_EOL_CRLF_STRICT: {
		it = FUNC6(buffer, "\r\n", 2, &it);
		if (it.pos < 0)
			goto done;
		extra_drain = 2;
		break;
	}
	case EVBUFFER_EOL_CRLF: {
		ev_ssize_t start_pos = it.pos;
		/* Look for a LF ... */
		if (FUNC7(&it, '\n') < 0)
			goto done;
		extra_drain = 1;
		/* ... optionally preceeded by a CR. */
		if (it.pos == start_pos)
			break; /* If the first character is \n, don't back up */
		/* This potentially does an extra linear walk over the first
		 * few chains.  Probably, that's not too expensive unless you
		 * have a really pathological setup. */
		FUNC9(&it2, &it, sizeof(it));
		if (FUNC5(buffer, &it2, 1)<0)
			break;
		if (FUNC4(&it2) == '\r') {
			FUNC9(&it, &it2, sizeof(it));
			extra_drain = 2;
		}
		break;
	}
	case EVBUFFER_EOL_LF:
		if (FUNC7(&it, '\n') < 0)
			goto done;
		extra_drain = 1;
		break;
	case EVBUFFER_EOL_NUL:
		if (FUNC7(&it, '\0') < 0)
			goto done;
		extra_drain = 1;
		break;
	default:
		goto done;
	}

	ok = 1;
done:
	FUNC1(buffer);

	if (!ok)
		FUNC2(&it);
	if (eol_len_out)
		*eol_len_out = extra_drain;

	return it;
}