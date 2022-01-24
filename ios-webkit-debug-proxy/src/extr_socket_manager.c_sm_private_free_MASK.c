#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sm_private {int dummy; } ;
typedef  TYPE_1__* sm_private_t ;
struct TYPE_5__ {struct TYPE_5__* tmp_buf; int /*<<< orphan*/  fd_to_sendq; int /*<<< orphan*/  fd_to_value; int /*<<< orphan*/  fd_to_ssl; struct TYPE_5__* tmp_fail_fds; struct TYPE_5__* tmp_recv_fds; struct TYPE_5__* tmp_send_fds; struct TYPE_5__* recv_fds; struct TYPE_5__* send_fds; struct TYPE_5__* server_fds; struct TYPE_5__* all_fds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(sm_private_t my) {
  if (my) {
    FUNC0(my->all_fds);
    FUNC0(my->server_fds);
    FUNC0(my->send_fds);
    FUNC0(my->recv_fds);
    FUNC0(my->tmp_send_fds);
    FUNC0(my->tmp_recv_fds);
    FUNC0(my->tmp_fail_fds);
    FUNC1(my->fd_to_ssl);
    FUNC1(my->fd_to_value);
    FUNC1(my->fd_to_sendq);
    FUNC0(my->tmp_buf);
    FUNC2(my, 0, sizeof(struct sm_private));
    FUNC0(my);
  }
}