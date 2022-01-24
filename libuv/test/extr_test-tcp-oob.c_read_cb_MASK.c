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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_os_fd_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  lbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MSG_OOB ; 
 int /*<<< orphan*/  idle ; 
 int /*<<< orphan*/  idle_cb ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_stream_t* handle, ssize_t nread, const uv_buf_t* buf) {
#ifdef __MVS__
  char lbuf[12];
#endif
  uv_os_fd_t fd;

  FUNC0(nread >= 0);
  FUNC0(0 == FUNC2((uv_handle_t*)handle, &fd));
  FUNC0(0 == FUNC3(&idle, idle_cb));

#ifdef __MVS__
  /* Need to flush out the OOB data. Otherwise, this callback will get
   * triggered on every poll with nread = 0.
   */
  ASSERT(-1 != recv(fd, lbuf, sizeof(lbuf), MSG_OOB));
#endif
}