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
struct evbuffer_chain {struct evbuffer_chain* next; } ;
struct evbuffer {scalar_t__ refcnt; int /*<<< orphan*/  lock; scalar_t__ own_lock; int /*<<< orphan*/  deferred; int /*<<< orphan*/  cb_queue; scalar_t__ deferred_cbs; struct evbuffer_chain* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct evbuffer*) ; 

void
FUNC8(struct evbuffer *buffer)
{
	struct evbuffer_chain *chain, *next;
	FUNC0(buffer);

	FUNC3(buffer->refcnt > 0);

	if (--buffer->refcnt > 0) {
		FUNC1(buffer);
		return;
	}

	for (chain = buffer->first; chain != NULL; chain = next) {
		next = chain->next;
		FUNC4(chain);
	}
	FUNC5(buffer);
	if (buffer->deferred_cbs)
		FUNC6(buffer->cb_queue, &buffer->deferred);

	FUNC1(buffer);
	if (buffer->own_lock)
		FUNC2(buffer->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
	FUNC7(buffer);
}