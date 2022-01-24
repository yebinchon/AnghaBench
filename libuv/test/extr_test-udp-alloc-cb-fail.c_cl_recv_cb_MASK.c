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
typedef  int /*<<< orphan*/  uv_udp_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ UV_ENOBUFS ; 
 int /*<<< orphan*/  cl_recv_cb_called ; 
 int /*<<< orphan*/  close_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uv_udp_t* handle,
                       ssize_t nread,
                       const uv_buf_t* buf,
                       const struct sockaddr* addr,
                       unsigned flags) {
  FUNC1(handle);
  FUNC0(flags == 0);
  FUNC0(nread == UV_ENOBUFS);

  cl_recv_cb_called++;

  FUNC2((uv_handle_t*) handle, close_cb);
}