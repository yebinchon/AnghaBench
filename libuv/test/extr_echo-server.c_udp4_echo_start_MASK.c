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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  UDP ; 
 int /*<<< orphan*/  echo_alloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_recv ; 
 int /*<<< orphan*/ * server ; 
 int /*<<< orphan*/  serverType ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  udpServer ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int port) {
  int r;

  server = (uv_handle_t*)&udpServer;
  serverType = UDP;

  r = FUNC2(loop, &udpServer);
  if (r) {
    FUNC0(stderr, "uv_udp_init: %s\n", FUNC1(r));
    return 1;
  }

  r = FUNC3(&udpServer, echo_alloc, on_recv);
  if (r) {
    FUNC0(stderr, "uv_udp_recv_start: %s\n", FUNC1(r));
    return 1;
  }

  return 0;
}