#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {char const* base; int len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,int,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    h2o_iovec_t input, host;
    uint16_t port;
    const char *ret;

    input = FUNC1(FUNC0("127.0.0.1"));
    ret = FUNC3(input.base, input.len, &host, &port);
    FUNC4(ret == input.base + input.len);
    FUNC4(FUNC2(host.base, host.len, FUNC0("127.0.0.1")));
    FUNC4(port == 65535);

    input = FUNC1(FUNC0("127.0.0.1/"));
    ret = FUNC3(input.base, input.len, &host, &port);
    FUNC4(FUNC5(ret, "/") == 0);
    FUNC4(FUNC2(host.base, host.len, FUNC0("127.0.0.1")));
    FUNC4(port == 65535);

    input = FUNC1(FUNC0("127.0.0.1:8081/"));
    ret = FUNC3(input.base, input.len, &host, &port);
    FUNC4(FUNC5(ret, "/") == 0);
    FUNC4(FUNC2(host.base, host.len, FUNC0("127.0.0.1")));
    FUNC4(port == 8081);

    input = FUNC1(FUNC0("[::ffff:192.0.2.1]:8081/"));
    ret = FUNC3(input.base, input.len, &host, &port);
    FUNC4(FUNC5(ret, "/") == 0);
    FUNC4(FUNC2(host.base, host.len, FUNC0("::ffff:192.0.2.1")));
    FUNC4(port == 8081);

    input = FUNC1(FUNC0("[::ffff:192.0.2.1:8081/"));
    ret = FUNC3(input.base, input.len, &host, &port);
    FUNC4(ret == NULL);

    input = FUNC1(FUNC0(":8081/"));
    ret = FUNC3(input.base, input.len, &host, &port);
    FUNC4(ret == NULL);

    input = FUNC1(FUNC0("[]:8081/"));
    ret = FUNC3(input.base, input.len, &host, &port);
    FUNC4(ret == NULL);
}