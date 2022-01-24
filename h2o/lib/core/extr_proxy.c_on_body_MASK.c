#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  inflight; } ;
struct rp_generator_t {int res_done; int had_body_error; TYPE_2__ sending; TYPE_4__* src_req; scalar_t__ req_done; TYPE_1__* client; int /*<<< orphan*/  last_content_before_send; int /*<<< orphan*/  send_headers_timeout; } ;
struct TYPE_9__ {struct rp_generator_t* data; } ;
typedef  TYPE_3__ h2o_httpclient_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* proceed_req ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SEND_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct rp_generator_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct rp_generator_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct rp_generator_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* h2o_httpclient_error_is_eos ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,char*,char const*) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(h2o_httpclient_t *client, const char *errstr)
{
    struct rp_generator_t *self = client->data;

    FUNC5(&self->send_headers_timeout);

    if (errstr != NULL) {
        FUNC0(self);

        /* detach the content */
        self->last_content_before_send = *self->client->buf;
        FUNC3(self->client->buf, &h2o_socket_buffer_prototype);
        if (errstr == h2o_httpclient_error_is_eos) {
            self->res_done = 1;
            if (self->req_done)
                FUNC1(self);
        } else {
            FUNC1(self);
            FUNC4(self->src_req, "lib/core/proxy.c", "%s", errstr);
            self->had_body_error = 1;
            if (self->src_req->proceed_req != NULL) {
                self->src_req->proceed_req(self->src_req, 0, H2O_SEND_STATE_ERROR);
            }
        }
    }
    if (!self->sending.inflight)
        FUNC2(self);

    return 0;
}