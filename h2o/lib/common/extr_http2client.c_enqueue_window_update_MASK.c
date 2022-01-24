#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct st_h2o_http2client_conn_t {TYPE_1__ output; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  h2o_http2_window_t ;

/* Variables and functions */
 size_t INT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct st_h2o_http2client_conn_t*) ; 

__attribute__((used)) static void FUNC5(struct st_h2o_http2client_conn_t *conn, uint32_t stream_id, h2o_http2_window_t *window,
                                  size_t desired)
{
    FUNC0(desired <= INT32_MAX);
    if (FUNC2(window) * 2 < desired) {
        int32_t delta = (int32_t)(desired - FUNC2(window));
        FUNC1(&conn->output.buf, stream_id, delta);
        FUNC4(conn);
        FUNC3(window, delta);
    }
}