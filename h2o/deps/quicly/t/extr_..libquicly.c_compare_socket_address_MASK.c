#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_flowinfo; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_port; TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sockaddr *x, struct sockaddr *y)
{
#define CMP(a, b)                                                                                                                  \
    if (a != b)                                                                                                                    \
    return a < b ? -1 : 1

    CMP(x->sa_family, y->sa_family);

    if (x->sa_family == AF_INET) {
        struct sockaddr_in *xin = (void *)x, *yin = (void *)y;
        CMP(FUNC3(xin->sin_addr.s_addr), FUNC3(yin->sin_addr.s_addr));
        CMP(FUNC4(xin->sin_port), FUNC4(yin->sin_port));
    } else if (x->sa_family == AF_INET6) {
        struct sockaddr_in6 *xin6 = (void *)x, *yin6 = (void *)y;
        int r = FUNC2(xin6->sin6_addr.s6_addr, yin6->sin6_addr.s6_addr, sizeof(xin6->sin6_addr.s6_addr));
        if (r != 0)
            return r;
        CMP(FUNC4(xin6->sin6_port), FUNC4(yin6->sin6_port));
        CMP(xin6->sin6_flowinfo, yin6->sin6_flowinfo);
        CMP(xin6->sin6_scope_id, yin6->sin6_scope_id);
    } else if (x->sa_family == AF_UNSPEC) {
        return 1;
    } else {
        FUNC1(!"unknown sa_family");
    }

#undef CMP
    return 0;
}