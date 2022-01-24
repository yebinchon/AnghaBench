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
typedef  int /*<<< orphan*/  main_arena_ind ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  arena_ind ;

/* Variables and functions */
 int BUFERROR_BUF ; 
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (char*,void*,size_t*,void*,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void *
FUNC7(void *arg) {
	unsigned main_arena_ind = *(unsigned *)arg;
	void *p;
	unsigned arena_ind;
	size_t size;
	int err;

	p = FUNC5(1);
	FUNC0(p, "Error in malloc()");
	FUNC3(p);

	size = sizeof(arena_ind);
	if ((err = FUNC4("thread.arena", (void *)&arena_ind, &size,
	    (void *)&main_arena_ind, sizeof(main_arena_ind)))) {
		char buf[BUFERROR_BUF];

		FUNC2(err, buf, sizeof(buf));
		FUNC6("Error in mallctl(): %s", buf);
	}

	size = sizeof(arena_ind);
	if ((err = FUNC4("thread.arena", (void *)&arena_ind, &size, NULL,
	    0))) {
		char buf[BUFERROR_BUF];

		FUNC2(err, buf, sizeof(buf));
		FUNC6("Error in mallctl(): %s", buf);
	}
	FUNC1(arena_ind, main_arena_ind,
	    "Arena index should be same as for main thread");

	return NULL;
}