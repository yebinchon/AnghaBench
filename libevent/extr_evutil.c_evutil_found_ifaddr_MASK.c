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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int had_ipv4_address ; 
 int had_ipv6_address ; 

__attribute__((used)) static void
FUNC3(const struct sockaddr *sa)
{
	if (sa->sa_family == AF_INET) {
		const struct sockaddr_in *sin = (struct sockaddr_in *)sa;
		if (!FUNC1(&sin->sin_addr)) {
			FUNC0(("Detected an IPv4 interface"));
			had_ipv4_address = 1;
		}
	} else if (sa->sa_family == AF_INET6) {
		const struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sa;
		if (!FUNC2(&sin6->sin6_addr)) {
			FUNC0(("Detected an IPv6 interface"));
			had_ipv6_address = 1;
		}
	}
}