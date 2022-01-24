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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_READABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  socket_cb_called ; 
 int /*<<< orphan*/  socket_cb_read_buf ; 
 scalar_t__ socket_cb_read_fd ; 
 scalar_t__ socket_cb_read_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_poll_t* poll, int status, int events) {
  ssize_t cnt;
  socket_cb_called++;
  FUNC0(0 == status);
  FUNC1("Socket cb got events %d\n", events);
  FUNC0(UV_READABLE == (events & UV_READABLE));
  if (socket_cb_read_fd) {
    cnt = FUNC2(socket_cb_read_fd, socket_cb_read_buf, socket_cb_read_size);
    FUNC0(cnt == socket_cb_read_size);
  }
  FUNC3((uv_handle_t*) poll, NULL);
}