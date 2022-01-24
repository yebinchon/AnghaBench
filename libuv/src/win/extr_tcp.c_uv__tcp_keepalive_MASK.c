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
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_KEEPALIVE ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC2(uv_tcp_t* handle, SOCKET socket, int enable, unsigned int delay) {
  if (FUNC1(socket,
                 SOL_SOCKET,
                 SO_KEEPALIVE,
                 (const char*)&enable,
                 sizeof enable) == -1) {
    return FUNC0();
  }

  if (enable && FUNC1(socket,
                           IPPROTO_TCP,
                           TCP_KEEPALIVE,
                           (const char*)&delay,
                           sizeof delay) == -1) {
    return FUNC0();
  }

  return 0;
}