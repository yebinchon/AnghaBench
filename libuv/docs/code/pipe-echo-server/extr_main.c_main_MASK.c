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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIPENAME ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_new_connection ; 
 int /*<<< orphan*/  remove_sock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8() {
    loop = FUNC2();

    uv_pipe_t server;
    FUNC6(loop, &server, 0);

    FUNC1(SIGINT, remove_sock);

    int r;
    if ((r = FUNC5(&server, PIPENAME))) {
        FUNC0(stderr, "Bind error %s\n", FUNC3(r));
        return 1;
    }
    if ((r = FUNC4((uv_stream_t*) &server, 128, on_new_connection))) {
        FUNC0(stderr, "Listen error %s\n", FUNC3(r));
        return 2;
    }
    return FUNC7(loop, UV_RUN_DEFAULT);
}