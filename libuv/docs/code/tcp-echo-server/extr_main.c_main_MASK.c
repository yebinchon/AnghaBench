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
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_BACKLOG ; 
 int /*<<< orphan*/  DEFAULT_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  addr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_new_connection ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8() {
    loop = FUNC1();

    uv_tcp_t server;
    FUNC7(loop, &server);

    FUNC2("0.0.0.0", DEFAULT_PORT, &addr);

    FUNC6(&server, (const struct sockaddr*)&addr, 0);
    int r = FUNC3((uv_stream_t*) &server, DEFAULT_BACKLOG, on_new_connection);
    if (r) {
        FUNC0(stderr, "Listen error %s\n", FUNC5(r));
        return 1;
    }
    return FUNC4(loop, UV_RUN_DEFAULT);
}