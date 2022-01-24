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
typedef  int /*<<< orphan*/  uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_new_connection ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct sockaddr_in*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9() {
    loop = FUNC2();

    FUNC1();

    uv_tcp_t server;
    FUNC8(loop, &server);

    struct sockaddr_in bind_addr;
    FUNC4("0.0.0.0", 7000, &bind_addr);
    FUNC7(&server, (const struct sockaddr *)&bind_addr, 0);
    int r;
    if ((r = FUNC5((uv_stream_t*) &server, 128, on_new_connection))) {
        FUNC0(stderr, "Listen error %s\n", FUNC3(r));
        return 2;
    }
    return FUNC6(loop, UV_RUN_DEFAULT);
}