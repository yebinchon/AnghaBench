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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  alloc_buffer ; 
 int /*<<< orphan*/  echo_read ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  on_close ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(uv_stream_t *server, int status) {
    if (status < 0) {
        FUNC0(stderr, "New connection error %s\n", FUNC5(status));
        // error!
        return;
    }

    uv_tcp_t *client = (uv_tcp_t*) FUNC1(sizeof(uv_tcp_t));
    FUNC6(loop, client);
    if (FUNC2(server, (uv_stream_t*) client) == 0) {
        FUNC4((uv_stream_t*) client, alloc_buffer, echo_read);
    }
    else {
        FUNC3((uv_handle_t*) client, on_close);
    }
}