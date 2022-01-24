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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UV_EINVAL ; 
 scalar_t__ UV_ENOTCONN ; 
 int /*<<< orphan*/  close_cb ; 
 int shutdown_before_close ; 
 int /*<<< orphan*/  shutdown_cb ; 
 int /*<<< orphan*/  shutdown_req ; 
 int /*<<< orphan*/  tcp_server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uv_tcp_t* handle) {
  if (shutdown_before_close == 1) {
    FUNC0(0 == FUNC2(&shutdown_req, (uv_stream_t*) handle, shutdown_cb));
    FUNC0(UV_EINVAL == FUNC3(handle, close_cb));
  } else {
    FUNC0(0 == FUNC3(handle, close_cb));
    FUNC0(UV_ENOTCONN == FUNC2(&shutdown_req, (uv_stream_t*) handle, shutdown_cb));
  }

  FUNC1((uv_handle_t*) &tcp_server, NULL);
}