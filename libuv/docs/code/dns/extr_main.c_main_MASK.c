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
typedef  int /*<<< orphan*/  uv_getaddrinfo_t ;
struct addrinfo {scalar_t__ ai_flags; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_resolved ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,struct addrinfo*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5() {
    loop = FUNC1();

    struct addrinfo hints;
    hints.ai_family = PF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_flags = 0;

    uv_getaddrinfo_t resolver;
    FUNC0(stderr, "irc.freenode.net is... ");
    int r = FUNC3(loop, &resolver, on_resolved, "irc.freenode.net", "6667", &hints);

    if (r) {
        FUNC0(stderr, "getaddrinfo call error %s\n", FUNC2(r));
        return 1;
    }
    return FUNC4(loop, UV_RUN_DEFAULT);
}