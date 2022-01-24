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
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  nrecv ; 
 scalar_t__ nrecv_total ; 
 int /*<<< orphan*/  read_sockets_close_cb ; 
 scalar_t__ start_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uv_stream_t* stream, ssize_t bytes, const uv_buf_t* buf) {
  if (nrecv_total == 0) {
    FUNC0(start_time == 0);
    FUNC4(loop);
    start_time = FUNC3(loop);
  }

  if (bytes < 0) {
    FUNC2((uv_handle_t*)stream, read_sockets_close_cb);
    return;
  }

  FUNC1(buf);

  nrecv += bytes;
  nrecv_total += bytes;
}