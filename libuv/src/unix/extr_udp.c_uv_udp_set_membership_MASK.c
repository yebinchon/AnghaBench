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
typedef  int /*<<< orphan*/  uv_udp_t ;
typedef  int /*<<< orphan*/  uv_membership ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  UV_UDP_REUSEADDR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sockaddr_in*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sockaddr_in6*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,struct sockaddr_in6*) ; 

int FUNC5(uv_udp_t* handle,
                          const char* multicast_addr,
                          const char* interface_addr,
                          uv_membership membership) {
  int err;
  struct sockaddr_in addr4;
  struct sockaddr_in6 addr6;

  if (FUNC3(multicast_addr, 0, &addr4) == 0) {
    err = FUNC0(handle, AF_INET, UV_UDP_REUSEADDR);
    if (err)
      return err;
    return FUNC1(handle, &addr4, interface_addr, membership);
  } else if (FUNC4(multicast_addr, 0, &addr6) == 0) {
    err = FUNC0(handle, AF_INET6, UV_UDP_REUSEADDR);
    if (err)
      return err;
    return FUNC2(handle, &addr6, interface_addr, membership);
  } else {
    return UV_EINVAL;
  }
}