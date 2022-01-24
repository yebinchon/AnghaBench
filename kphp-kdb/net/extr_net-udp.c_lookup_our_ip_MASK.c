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
 int MAX_OUR_IPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int* our_ip ; 
 int /*<<< orphan*/ * our_ipv6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int used_our_ip ; 

int FUNC2 (unsigned ip) {
  int i;
  for (i = 2; i <= used_our_ip; i += 2) {
    if (our_ip[i] == ip) {
      return i;
    }
  }
  if (!used_our_ip) {
    used_our_ip = 2;
    our_ip[2] = 0x7f000001;
    FUNC1 (our_ipv6[2], our_ip[2]);
    FUNC0 (2);
    if (our_ip[2] == ip) {
      return 2;
    }
  } else if (used_our_ip >= MAX_OUR_IPS - 2) {
    return 0;
  }
  used_our_ip += 2;
  our_ip[used_our_ip] = ip;
  FUNC1 (our_ipv6[used_our_ip], ip);
  FUNC0 (used_our_ip);
  return used_our_ip;
}