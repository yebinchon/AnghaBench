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
struct fd {int /*<<< orphan*/  real_fd; } ;
typedef  int /*<<< orphan*/  int_t ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int ICMP6_FILTER_ ; 
 int IPPROTO_ICMPV6 ; 
 int IPPROTO_IP ; 
 int IP_MTU_DISCOVER_ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  _EBADF ; 
 int /*<<< orphan*/  _EFAULT ; 
 int /*<<< orphan*/  _EINVAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,char*,int) ; 
 struct fd* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

int_t FUNC7(fd_t sock_fd, dword_t level, dword_t option, addr_t value_addr, dword_t value_len) {
    FUNC0("setsockopt(%d, %d, %d, 0x%x, %d)", sock_fd, level, option, value_addr, value_len);
    struct fd *sock = FUNC3(sock_fd);
    if (sock == NULL)
        return _EBADF;
    char value[value_len];
    if (FUNC6(value_addr, value, value_len))
        return _EFAULT;

    // ICMP6_FILTER can only be set on real SOCK_RAW
    if (level == IPPROTO_ICMPV6 && option == ICMP6_FILTER_)
        return 0;
    // IP_MTU_DISCOVER has no equivalent on Darwin
    if (level == IPPROTO_IP && option == IP_MTU_DISCOVER_)
        return 0;

    int real_opt = FUNC5(option, level);
    if (real_opt < 0)
        return _EINVAL;
    int real_level = FUNC4(level);
    if (real_level < 0)
        return _EINVAL;

    // 0 means the option is not implemented, but things rely on it, so we
    // should just ignore attempts to set it.
    if (real_opt == 0)
        return 0;

    int err = FUNC2(sock->real_fd, real_level, real_opt, value, value_len);
    if (err < 0)
        return FUNC1();
    return 0;
}