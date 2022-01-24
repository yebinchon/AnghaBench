#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * orphan_placeholder; } ;
struct TYPE_4__ {TYPE_1__ reqs; } ;
struct st_h2o_http3_server_conn_t {TYPE_2__ scheduler; } ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static h2o_http2_scheduler_node_t *FUNC2(struct st_h2o_http3_server_conn_t *conn)
{
    if (conn->scheduler.reqs.orphan_placeholder == NULL) {
        conn->scheduler.reqs.orphan_placeholder = FUNC1(sizeof(*conn->scheduler.reqs.orphan_placeholder));
        FUNC0(conn->scheduler.reqs.orphan_placeholder);
    }
    return conn->scheduler.reqs.orphan_placeholder;
}