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
struct evhttp_bound_socket {int /*<<< orphan*/  listener; } ;
struct evhttp {int /*<<< orphan*/  sockets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct evhttp_bound_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_bound_socket*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC3(struct evhttp *http, struct evhttp_bound_socket *bound)
{
	FUNC0(&http->sockets, bound, next);
	FUNC1(bound->listener);
	FUNC2(bound);
}