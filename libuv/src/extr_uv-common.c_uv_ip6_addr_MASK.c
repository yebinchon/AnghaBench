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
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
typedef  int /*<<< orphan*/  address_part ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

int FUNC7(const char* ip, int port, struct sockaddr_in6* addr) {
  char address_part[40];
  size_t address_part_size;
  const char* zone_index;

  FUNC4(addr, 0, sizeof(*addr));
  addr->sin6_family = AF_INET6;
  addr->sin6_port = FUNC1(port);
#ifdef SIN6_LEN
  addr->sin6_len = sizeof(*addr);
#endif

  zone_index = FUNC5(ip, '%');
  if (zone_index != NULL) {
    address_part_size = zone_index - ip;
    if (address_part_size >= sizeof(address_part))
      address_part_size = sizeof(address_part) - 1;

    FUNC3(address_part, ip, address_part_size);
    address_part[address_part_size] = '\0';
    ip = address_part;

    zone_index++; /* skip '%' */
    /* NOTE: unknown interface (id=0) is silently ignored */
#ifdef _WIN32
    addr->sin6_scope_id = atoi(zone_index);
#else
    addr->sin6_scope_id = FUNC2(zone_index);
#endif
  }

  return FUNC6(AF_INET6, ip, &addr->sin6_addr);
}