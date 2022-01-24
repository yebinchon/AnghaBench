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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  alloc_buffer ; 
 int /*<<< orphan*/  echo_read ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(uv_stream_t *server, int status) {
    if (status == -1) {
        // error!
        return;
    }

    uv_pipe_t *client = (uv_pipe_t*) FUNC0(sizeof(uv_pipe_t));
    FUNC3(loop, client, 0);
    if (FUNC1(server, (uv_stream_t*) client) == 0) {
        FUNC4((uv_stream_t*) client, alloc_buffer, echo_read);
    }
    else {
        FUNC2((uv_handle_t*) client, NULL);
    }
}