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
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int /*<<< orphan*/  h_addr_list; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 struct hostent* FUNC0 (char const*) ; 
 int FUNC1 (int) ; 

unsigned FUNC2 (const char *host) { /* {{{ */
  struct hostent *h;
  if (!(h = FUNC0 (host)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    return 0;
  }
  return FUNC1 (*((int *) h->h_addr));
}