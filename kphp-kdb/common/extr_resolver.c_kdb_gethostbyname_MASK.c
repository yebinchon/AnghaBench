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
struct hostent {char* h_name; } ;
struct host {int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  Hosts ; 
 struct host* FUNC0 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 struct hostent* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct hostent hret ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipaddr ; 
 scalar_t__ kdb_hosts_loaded ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 

struct hostent *FUNC8 (const char *name) {
  if (!kdb_hosts_loaded) {
    FUNC4 ();
  }

  int len = FUNC7 (name);


  if (name[0] == '[' && name[len-1] == ']' && len <= 64) {
    /*
    if (parse_ipv6 ((unsigned short *) ipv6_addr, name + 1) == len - 2) {
      hret6.h_name = (char *)name;
      return &hret6;
    }
    */
    char buf[64];
    FUNC5 (buf, name + 1, len - 2);
    buf[len - 2] = 0;
    return FUNC2 (buf, AF_INET6);
  }


  if (kdb_hosts_loaded <= 0) {
    return FUNC1 (name) ?: FUNC2 (name, AF_INET6);
  }

  if (len >= 128) {
    return FUNC1 (name) ?: FUNC2 (name, AF_INET6);
  }

  struct host *res = FUNC0 (&Hosts, name, len, 0);

  if (!res) {
    if (FUNC6 (name, '.') || FUNC6 (name, ':')) {
      return FUNC1 (name) ?: FUNC2 (name, AF_INET6);
    } else {
      return 0;
    }
  }

  hret.h_name = (char *)name;
  ipaddr = FUNC3 (res->ip);
  return &hret;
}