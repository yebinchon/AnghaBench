#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ (* on_body ) (TYPE_6__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  response_end_at; } ;
struct TYPE_15__ {int /*<<< orphan*/  _timeout; TYPE_4__* ctx; TYPE_3__ _cb; TYPE_2__ timings; } ;
struct TYPE_10__ {int /*<<< orphan*/  res; } ;
struct st_h2o_http1client_t {TYPE_6__ super; TYPE_1__ state; } ;
struct TYPE_14__ {scalar_t__ bytes_read; struct st_h2o_http1client_t* data; } ;
typedef  TYPE_5__ h2o_socket_t ;
struct TYPE_13__ {int /*<<< orphan*/  io_timeout; int /*<<< orphan*/  loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http1client_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http1client_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * h2o_httpclient_error_is_eos ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1client_t *client = sock->data;

    FUNC5(&client->super._timeout);

    if (err != NULL) {
        client->state.res = STREAM_STATE_CLOSED;
        client->super.timings.response_end_at = FUNC3(client->super.ctx->loop);
        client->super._cb.on_body(&client->super, h2o_httpclient_error_is_eos);
        FUNC1(client);
        return;
    }

    if (sock->bytes_read != 0) {
        if (client->super._cb.on_body(&client->super, NULL) != 0) {
            FUNC0(client);
            return;
        }
        FUNC2(&client->super);
    }

    FUNC4(client->super.ctx->loop, client->super.ctx->io_timeout, &client->super._timeout);
}