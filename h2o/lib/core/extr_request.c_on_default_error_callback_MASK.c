#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* pathconf; int /*<<< orphan*/ * error_logs; } ;
typedef  TYPE_3__ h2o_req_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_4__ h2o_iovec_t ;
struct TYPE_9__ {scalar_t__ emit_request_errors; } ;
struct TYPE_10__ {TYPE_1__ error_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__,TYPE_4__) ; 

__attribute__((used)) static void FUNC3(void *data, h2o_iovec_t prefix, h2o_iovec_t msg)
{
    h2o_req_t *req = (void *)data;
    if (req->error_logs == NULL)
        FUNC1(&req->error_logs, &h2o_socket_buffer_prototype);
    FUNC0(&req->error_logs, prefix.base, prefix.len);
    FUNC0(&req->error_logs, msg.base, msg.len);

    if (req->pathconf->error_log.emit_request_errors) {
        FUNC2(prefix, msg);
    }
}