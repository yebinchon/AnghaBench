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
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 scalar_t__ SM_UDP ; 
 int /*<<< orphan*/  backlog ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ enable_ipv6 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 
 int FUNC4 (int,struct in_addr,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ verbosity ; 

int FUNC5 (int port) {
  static struct in_addr settings_addr;
  char buf2[256];
  int sfd = FUNC4 (port, settings_addr, backlog, SM_UDP + enable_ipv6);
  if (sfd < 0) {
    FUNC2 ("cannot open UDP server socket at port %d: %m\n", port);
    FUNC1 (1);
  }
  if (verbosity) {
    FUNC3 ("created listening udp socket at %s:%d, fd=%d\n", FUNC0 (settings_addr.s_addr, buf2), port, sfd);
  }
  return sfd;
}