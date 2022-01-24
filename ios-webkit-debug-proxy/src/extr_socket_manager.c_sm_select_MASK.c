#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sm_t ;
typedef  TYPE_2__* sm_private_t ;
struct TYPE_11__ {int tv_sec; } ;
struct TYPE_10__ {int max_fd; int /*<<< orphan*/  server_fds; int /*<<< orphan*/  tmp_fail_fds; int /*<<< orphan*/  tmp_recv_fds; int /*<<< orphan*/  tmp_send_fds; TYPE_8__ timeout; int /*<<< orphan*/  all_fds; int /*<<< orphan*/  recv_fds; int /*<<< orphan*/  send_fds; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* remove_fd ) (TYPE_1__*,int) ;TYPE_2__* private_state; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZEOF_FD_SET ; 
 int WSAEINTR ; 
 int WSAEWOULDBLOCK ; 
 int FUNC1 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

int FUNC10(sm_t self, int timeout_secs) {
  sm_private_t my = self->private_state;

  if (my->max_fd <= 0) {
    return -1;
  }

  my->timeout.tv_sec = timeout_secs;

  // copy into tmp
  FUNC3(my->tmp_send_fds, my->send_fds, SIZEOF_FD_SET);
  FUNC3(my->tmp_recv_fds, my->recv_fds, SIZEOF_FD_SET);
  FUNC3(my->tmp_fail_fds, my->all_fds, SIZEOF_FD_SET);
  int num_ready = FUNC5(my->max_fd + 1, my->tmp_recv_fds,
      my->tmp_send_fds, my->tmp_fail_fds, &my->timeout);

  // see if any sockets are readable
  if (num_ready == 0) {
    return 0; // timeout, select again
  }
  if (num_ready < 0) {
#ifdef WIN32
    int socket_err = WSAGetLastError();
    if (socket_err != WSAEINTR && socket_err != WSAEWOULDBLOCK) {
      fprintf(stderr, "socket_manager: select failed with\
          error %d\n", WSAGetLastError());
      return -socket_err;
    }
#else
    if (errno != EINTR && errno != EAGAIN) {
      // might want to sleep here?
      FUNC4("select failed");
      return -errno;
    }
#endif
    return 0;
  }

  int num_left = num_ready;
  int fd;
  for (fd = 0; fd <= my->max_fd && num_left > 0; fd++) {
    bool can_send = FUNC0(fd, my->tmp_send_fds);
    bool can_recv = FUNC0(fd, my->tmp_recv_fds);
    bool is_fail = FUNC0(fd, my->tmp_fail_fds);
    if (!can_send && !can_recv && !is_fail) {
      continue;
    }
    num_left--;
    if (is_fail) {
      self->remove_fd(self, fd);
    } else if (FUNC0(fd, my->server_fds)) {
      FUNC6(self, fd);
    } else {
      if (can_send) {
        FUNC8(self, fd);
      }
      if (can_recv) {
        FUNC7(self, fd);
      }
    }
  }
  return num_ready;
}