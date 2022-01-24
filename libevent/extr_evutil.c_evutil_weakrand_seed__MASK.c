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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct evutil_weakrand_state {scalar_t__ seed; } ;
typedef  scalar_t__ ev_uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 

ev_uint32_t
FUNC3(struct evutil_weakrand_state *state, ev_uint32_t seed)
{
	if (seed == 0) {
		struct timeval tv;
		FUNC1(&tv, NULL);
		seed = (ev_uint32_t)tv.tv_sec + (ev_uint32_t)tv.tv_usec;
#ifdef _WIN32
		seed += (ev_uint32_t) _getpid();
#else
		seed += (ev_uint32_t) FUNC2();
#endif
	}
	state->seed = seed;
	return seed;
}