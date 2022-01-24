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
struct bufferevent {int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
struct TYPE_2__ {int own_lock; void* lock; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 struct bufferevent* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

int
FUNC4(struct bufferevent *bufev, void *lock)
{
#ifdef EVENT__DISABLE_THREAD_SUPPORT
	return -1;
#else
	struct bufferevent *underlying;

	if (FUNC0(bufev)->lock)
		return -1;
	underlying = FUNC2(bufev);

	if (!lock && underlying && FUNC0(underlying)->lock) {
		lock = FUNC0(underlying)->lock;
		FUNC0(bufev)->lock = lock;
		FUNC0(bufev)->own_lock = 0;
	} else if (!lock) {
		FUNC1(lock, EVTHREAD_LOCKTYPE_RECURSIVE);
		if (!lock)
			return -1;
		FUNC0(bufev)->lock = lock;
		FUNC0(bufev)->own_lock = 1;
	} else {
		FUNC0(bufev)->lock = lock;
		FUNC0(bufev)->own_lock = 0;
	}
	FUNC3(bufev->input, lock);
	FUNC3(bufev->output, lock);

	if (underlying && !FUNC0(underlying)->lock)
		FUNC4(underlying, lock);

	return 0;
#endif
}