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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  backlog ; 
 int /*<<< orphan*/  default_udp_socket ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  settings_addr ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tl_udp_server ; 
 int /*<<< orphan*/  tl_udp_server_methods ; 
 scalar_t__ usfd ; 

void FUNC5 (int port, int mode) {
  if (!usfd) {
    usfd = FUNC4 (port, settings_addr, backlog, mode + 1);
    if (usfd < 0) {
      FUNC2 (stderr, "cannot open udp port: %m\n");
      FUNC1 (1);
    }
  }
  FUNC0 ((default_udp_socket = FUNC3 (usfd, port, &tl_udp_server, &tl_udp_server_methods, 1 + mode)));
}