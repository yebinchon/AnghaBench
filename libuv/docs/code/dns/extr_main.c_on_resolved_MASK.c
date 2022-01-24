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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_getaddrinfo_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  on_connect ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(uv_getaddrinfo_t *resolver, int status, struct addrinfo *res) {
    if (status < 0) {
        FUNC0(stderr, "getaddrinfo callback error %s\n", FUNC2(status));
        return;
    }

    char addr[17] = {'\0'};
    FUNC4((struct sockaddr_in*) res->ai_addr, addr, 16);
    FUNC0(stderr, "%s\n", addr);

    uv_connect_t *connect_req = (uv_connect_t*) FUNC1(sizeof(uv_connect_t));
    uv_tcp_t *socket = (uv_tcp_t*) FUNC1(sizeof(uv_tcp_t));
    FUNC6(loop, socket);

    FUNC5(connect_req, socket, (const struct sockaddr*) res->ai_addr, on_connect);

    FUNC3(res);
}