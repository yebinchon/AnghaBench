#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sm_t ;
typedef  int /*<<< orphan*/  sm_status ;
typedef  TYPE_2__* sm_sendq_t ;
typedef  TYPE_3__* sm_private_t ;
struct TYPE_10__ {int max_fd; int /*<<< orphan*/  fd_to_sendq; int /*<<< orphan*/  all_fds; int /*<<< orphan*/  tmp_fail_fds; int /*<<< orphan*/  tmp_recv_fds; int /*<<< orphan*/  tmp_send_fds; int /*<<< orphan*/  recv_fds; int /*<<< orphan*/  send_fds; int /*<<< orphan*/  server_fds; int /*<<< orphan*/  fd_to_value; int /*<<< orphan*/  fd_to_ssl; } ;
struct TYPE_9__ {int recv_fd; struct TYPE_9__* next; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* on_close ) (TYPE_1__*,int,void*,int) ;TYPE_3__* private_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SM_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,void*,int) ; 

sm_status FUNC11(sm_t self, int fd) {
  sm_private_t my = self->private_state;
  if (!FUNC1(fd, my->all_fds)) {
    return SM_ERROR;
  }
  FUNC6(my->fd_to_ssl, FUNC2(fd), NULL);
  void *value = FUNC6(my->fd_to_value, FUNC2(fd), NULL);
  bool is_server = FUNC1(fd, my->server_fds);
  FUNC9(self, "ss.remove%s_fd(%d)", (is_server ? "_server" : ""), fd);
  sm_status ret = self->on_close(self, fd, value, is_server);
#ifdef WIN32
  closesocket(fd);
#else
  FUNC3(fd);
#endif
  FUNC0(fd, my->all_fds);
  if (is_server) {
    FUNC0(fd, my->server_fds);
  }
  FUNC0(fd, my->send_fds);
  FUNC0(fd, my->recv_fds);
  FUNC0(fd, my->tmp_send_fds);
  FUNC0(fd, my->tmp_recv_fds);
  FUNC0(fd, my->tmp_fail_fds);
  if (fd == my->max_fd) {
    while (my->max_fd >= 0 && !FUNC1(my->max_fd, my->all_fds)) {
      my->max_fd--;
    }
  }
  if (FUNC7(my->fd_to_sendq)) {
    sm_sendq_t *qs = (sm_sendq_t *)FUNC8(my->fd_to_sendq);
    sm_sendq_t *q;
    for (q = qs; *q; q++) {
      sm_sendq_t sendq = *q;
      while (sendq) {
        if (sendq->recv_fd == fd) {
          sendq->recv_fd = 0;
          // don't abort this blocked send, even though the "cause" has ended
        }
        sendq = sendq->next;
      }
    }
    FUNC5(qs);
  }
  return ret;
}