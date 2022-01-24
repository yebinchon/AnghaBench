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
struct evhttp_bound_socket {int dummy; } ;
struct evhttp {int /*<<< orphan*/  base; } ;
struct evconnlistener {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int LEV_OPT_CLOSE_ON_EXEC ; 
 int LEV_OPT_CLOSE_ON_FREE ; 
 int LEV_OPT_REUSEABLE ; 
 int /*<<< orphan*/  FUNC0 (struct evconnlistener*) ; 
 struct evconnlistener* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct evhttp_bound_socket* FUNC2 (struct evhttp*,struct evconnlistener*) ; 

struct evhttp_bound_socket *
FUNC3(struct evhttp *http, evutil_socket_t fd)
{
	struct evhttp_bound_socket *bound;
	struct evconnlistener *listener;
	const int flags =
	    LEV_OPT_REUSEABLE|LEV_OPT_CLOSE_ON_EXEC|LEV_OPT_CLOSE_ON_FREE;

	listener = FUNC1(http->base, NULL, NULL,
	    flags,
	    0, /* Backlog is '0' because we already said 'listen' */
	    fd);
	if (!listener)
		return (NULL);

	bound = FUNC2(http, listener);
	if (!bound) {
		FUNC0(listener);
		return (NULL);
	}
	return (bound);
}