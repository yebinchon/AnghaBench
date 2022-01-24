#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sm_private {int dummy; } ;
typedef  TYPE_2__* sm_private_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {char* tmp_buf; int max_fd; size_t tmp_buf_length; TYPE_1__ timeout; int /*<<< orphan*/ * tmp_fail_fds; int /*<<< orphan*/ * tmp_recv_fds; int /*<<< orphan*/ * tmp_send_fds; int /*<<< orphan*/ * recv_fds; int /*<<< orphan*/ * send_fds; int /*<<< orphan*/ * server_fds; int /*<<< orphan*/ * all_fds; void* fd_to_sendq; void* fd_to_value; void* fd_to_ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HT_INT_KEYS ; 
 int SIZEOF_FD_SET ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

sm_private_t FUNC6(size_t buf_length) {
  sm_private_t my = (sm_private_t)FUNC3(sizeof(struct sm_private));
  if (!my) {
    return NULL;
  }
  FUNC4(my, 0, sizeof(struct sm_private));
  my->all_fds = (fd_set *)FUNC3(SIZEOF_FD_SET);
  my->server_fds = (fd_set *)FUNC3(SIZEOF_FD_SET);
  my->send_fds = (fd_set *)FUNC3(SIZEOF_FD_SET);
  my->recv_fds = (fd_set *)FUNC3(SIZEOF_FD_SET);
  my->tmp_send_fds = (fd_set *)FUNC3(SIZEOF_FD_SET);
  my->tmp_recv_fds = (fd_set *)FUNC3(SIZEOF_FD_SET);
  my->tmp_fail_fds = (fd_set *)FUNC3(SIZEOF_FD_SET);
  my->fd_to_ssl = FUNC2(HT_INT_KEYS);
  my->fd_to_value = FUNC2(HT_INT_KEYS);
  my->fd_to_sendq = FUNC2(HT_INT_KEYS);
  my->tmp_buf = (char *)FUNC1(buf_length, sizeof(char *));
  if (!my->tmp_buf || !my->all_fds || !my->server_fds ||
      !my->send_fds || !my->recv_fds ||
      !my->tmp_send_fds || !my->tmp_recv_fds || !my->tmp_fail_fds ||
      !my->fd_to_ssl || !my->fd_to_value || !my->fd_to_sendq) {
    FUNC5(my);
    return NULL;
  }
  FUNC0(my->all_fds);
  FUNC0(my->server_fds);
  FUNC0(my->send_fds);
  FUNC0(my->recv_fds);
  FUNC0(my->tmp_send_fds);
  FUNC0(my->tmp_recv_fds);
  FUNC0(my->tmp_fail_fds);
  my->max_fd = -1;
  my->timeout.tv_sec = 5;
  my->timeout.tv_usec = 0;
  my->tmp_buf_length = buf_length;
  return my;
}