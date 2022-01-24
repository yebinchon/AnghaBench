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
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*,int) ; 
 scalar_t__ FUNC4 (char const*,int,struct sockaddr_in*) ; 
 int FUNC5 (struct sockaddr_in*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct sockaddr* addr, const char* compare_ip,
  int compare_port, const char* context) {
  struct sockaddr_in check_addr = *(struct sockaddr_in*) addr;
  struct sockaddr_in compare_addr;
  char check_ip[17];
  int r;

  FUNC0(0 == FUNC4(compare_ip, compare_port, &compare_addr));

  /* Both addresses should be ipv4 */
  FUNC0(check_addr.sin_family == AF_INET);
  FUNC0(compare_addr.sin_family == AF_INET);

  /* Check if the ip matches */
  FUNC0(FUNC1(&check_addr.sin_addr,
         &compare_addr.sin_addr,
         sizeof compare_addr.sin_addr) == 0);

  /* Check if the port matches. If port == 0 anything goes. */
  FUNC0(compare_port == 0 || check_addr.sin_port == compare_addr.sin_port);

  r = FUNC5(&check_addr, (char*) check_ip, sizeof check_ip);
  FUNC0(r == 0);

  FUNC3("%s: %s:%d\n", context, check_ip, FUNC2(check_addr.sin_port));
}