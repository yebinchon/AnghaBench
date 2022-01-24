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
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int /*<<< orphan*/  h_addr_list; } ;
struct conn_target {int port; struct in_addr target; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int FUNC0 (struct conn_target*) ; 
 struct hostent* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC3 (const char *host, int port, struct conn_target *ct) {
  if (!(0 <= port && port < 0x10000)) {
    FUNC2 (0, "bad port %d\n", port);
    return -1;
  }

  struct hostent *h;
  if (!(h = FUNC1 (host)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    FUNC2 (0, "can't resolve host\n");
    return -1;
  }

  ct->target = *(struct in_addr *) h->h_addr;
  ct->port = port;

  return FUNC0 (ct);
}