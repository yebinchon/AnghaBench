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
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_cb_called ; 

__attribute__((used)) static void FUNC2(uv_udp_t* handle,
                         ssize_t nread,
                         const uv_buf_t* buf,
                         const struct sockaddr* addr,
                         unsigned flags) {
  FUNC1(handle);
  FUNC0(nread >= 0);

  if (nread)
    recv_cb_called++;
}