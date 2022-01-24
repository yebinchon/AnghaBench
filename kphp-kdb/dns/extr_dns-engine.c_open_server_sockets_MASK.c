#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 scalar_t__ SM_UDP ; 
 int /*<<< orphan*/  backlog ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ enable_ipv6 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int port ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,scalar_t__) ; 
 scalar_t__ FUNC4 (int,TYPE_1__,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ settings_addr ; 
 scalar_t__ tcp_sfd ; 
 scalar_t__ udp_sfd ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void FUNC5 (void) {
  char buf2[256];
  if (udp_sfd < 0) {
    udp_sfd = FUNC4 (port, settings_addr, backlog, SM_UDP + enable_ipv6);
    if (udp_sfd < 0) {
      FUNC2 ("cannot open UDP server socket at port %d: %m\n", port);
      FUNC1 (1);
    }
    if (verbosity) {
      FUNC3 ("created listening udp socket at %s:%d, fd=%d\n", FUNC0 (settings_addr.s_addr, buf2), port, udp_sfd);
    }
  }
  if (tcp_sfd < 0) {
    tcp_sfd = FUNC4 (port, settings_addr, backlog, enable_ipv6);
    if (tcp_sfd < 0) {
      FUNC2 ("cannot open TCP server socket at port %d: %m\n", port);
      FUNC1 (1);
    }
  }
}