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
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct child_worker {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 size_t child_worker_count ; 
 int /*<<< orphan*/  dummy_buf ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC0 (int) ; 
 size_t round_robin_counter ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct child_worker* workers ; 

void FUNC6(uv_stream_t *server, int status) {
    if (status == -1) {
        // error!
        return;
    }

    uv_tcp_t *client = (uv_tcp_t*) FUNC0(sizeof(uv_tcp_t));
    FUNC4(loop, client);
    if (FUNC1(server, (uv_stream_t*) client) == 0) {
        uv_write_t *write_req = (uv_write_t*) FUNC0(sizeof(uv_write_t));
        dummy_buf = FUNC2("a", 1);
        struct child_worker *worker = &workers[round_robin_counter];
        FUNC5(write_req, (uv_stream_t*) &worker->pipe, &dummy_buf, 1, (uv_stream_t*) client, NULL);
        round_robin_counter = (round_robin_counter + 1) % child_worker_count;
    }
    else {
        FUNC3((uv_handle_t*) client, NULL);
    }
}