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
typedef  int /*<<< orphan*/  uv_poll_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTR ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  MSG_OOB ; 
 int UV_PRIORITIZED ; 
 int UV_READABLE ; 
 int UV_WRITABLE ; 
 int cli_pr_check ; 
 int cli_rd_check ; 
 int client_fd ; 
 scalar_t__ errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * poll_req ; 
 int FUNC3 (int,char**,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 int server_fd ; 
 int srv_rd_check ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,void (*) (int /*<<< orphan*/ *,int,int)) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(uv_poll_t* handle, int status, int events) {
  char buffer[5];
  int n;
  int fd;

  FUNC0(0 == FUNC6((uv_handle_t*)handle, &fd));
  FUNC2(buffer, 0, 5);

  if (events & UV_PRIORITIZED) {
    do
      n = FUNC3(client_fd, &buffer, 5, MSG_OOB);
    while (n == -1 && errno == EINTR);
    FUNC0(n >= 0 || errno != EINVAL);
    cli_pr_check = 1;
    FUNC0(0 == FUNC8(&poll_req[0]));
    FUNC0(0 == FUNC7(&poll_req[0],
                              UV_READABLE | UV_WRITABLE,
                              poll_cb));
  }
  if (events & UV_READABLE) {
    if (fd == client_fd) {
      do
        n = FUNC3(client_fd, &buffer, 5, 0);
      while (n == -1 && errno == EINTR);
      FUNC0(n >= 0 || errno != EINVAL);
      if (cli_rd_check == 1) {
        FUNC0(FUNC5(buffer, "world", n) == 0);
        FUNC0(5 == n);
        cli_rd_check = 2;
      }
      if (cli_rd_check == 0) {
        FUNC0(n == 4);
        FUNC0(FUNC5(buffer, "hello", n) == 0);
        cli_rd_check = 1;
        do {
          do
            n = FUNC3(server_fd, &buffer, 5, 0);
          while (n == -1 && errno == EINTR);
          if (n > 0) {
            FUNC0(n == 5);
            FUNC0(FUNC5(buffer, "world", n) == 0);
            cli_rd_check = 2;
          }
        } while (n > 0);

        FUNC0(FUNC1());
      }
    }
    if (fd == server_fd) {
      do
        n = FUNC3(server_fd, &buffer, 3, 0);
      while (n == -1 && errno == EINTR);
      FUNC0(n >= 0 || errno != EINVAL);
      FUNC0(3 == n);
      FUNC0(FUNC5(buffer, "foo", n) == 0);
      srv_rd_check = 1;
      FUNC8(&poll_req[1]);
    }
  }
  if (events & UV_WRITABLE) {
    do {
      n = FUNC4(client_fd, "foo", 3, 0);
    } while (n < 0 && errno == EINTR);
    FUNC0(3 == n);
  }
}