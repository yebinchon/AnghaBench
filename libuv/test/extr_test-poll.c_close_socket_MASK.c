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
typedef  int /*<<< orphan*/  uv_os_sock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ECONNRESET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 

__attribute__((used)) static void FUNC3(uv_os_sock_t sock) {
  int r;
#ifdef _WIN32
  r = closesocket(sock);
#else
  r = FUNC1(sock);
#endif
  /* On FreeBSD close() can fail with ECONNRESET if the socket was shutdown by
   * the peer before all pending data was delivered.
   */
  FUNC0(r == 0 || errno == ECONNRESET);
}