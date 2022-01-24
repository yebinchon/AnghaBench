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
typedef  scalar_t__ uv_os_sock_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uv_os_sock_t FUNC3(void) {
  uv_os_sock_t sock;

  sock = FUNC2(AF_INET, SOCK_DGRAM, IPPROTO_IP);
#ifdef _WIN32
  ASSERT(sock != INVALID_SOCKET);
#else
  FUNC0(sock >= 0);
#endif

#ifndef _WIN32
  {
    /* Allow reuse of the port. */
    int yes = 1;
    int r = FUNC1(sock, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof yes);
    FUNC0(r == 0);
  }
#endif

  return sock;
}