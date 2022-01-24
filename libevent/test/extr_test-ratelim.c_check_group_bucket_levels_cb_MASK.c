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
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  scalar_t__ ev_ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ ratelim_group ; 
 int /*<<< orphan*/  total_group_rbucket_level ; 
 int /*<<< orphan*/  total_group_wbucket_level ; 
 int /*<<< orphan*/  total_n_group_bev_checks ; 

__attribute__((used)) static void
FUNC2(evutil_socket_t fd, short events, void *arg)
{
	if (ratelim_group) {
		ev_ssize_t r = FUNC0(ratelim_group);
		ev_ssize_t w = FUNC1(ratelim_group);
		total_group_rbucket_level += r;
		total_group_wbucket_level += w;
	}
	++total_n_group_bev_checks;
}