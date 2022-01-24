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
struct st_h2o_evloop_epoll_t {int /*<<< orphan*/  ep; } ;
typedef  int /*<<< orphan*/  h2o_evloop_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(h2o_evloop_t *_loop)
{
    struct st_h2o_evloop_epoll_t *loop = (struct st_h2o_evloop_epoll_t *)_loop;
    FUNC0(loop->ep);
}