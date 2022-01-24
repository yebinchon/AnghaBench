#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_12__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/ * next; int /*<<< orphan*/  stop; int /*<<< orphan*/  do_send; } ;
struct TYPE_28__ {scalar_t__ size; scalar_t__ capacity; } ;
struct TYPE_29__ {TYPE_6__ bufs; } ;
struct TYPE_19__ {size_t token_inc; size_t tokens; int /*<<< orphan*/  timeout_entry; TYPE_9__* ctx; TYPE_8__ super; TYPE_7__ state; TYPE_11__* req; } ;
typedef  TYPE_10__ throttle_resp_t ;
typedef  int ssize_t ;
struct TYPE_22__ {TYPE_3__* entries; } ;
struct TYPE_26__ {int status; TYPE_15__ headers; } ;
struct TYPE_23__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_24__ {TYPE_1__ method; } ;
struct TYPE_20__ {size_t preferred_chunk_size; TYPE_5__* conn; TYPE_4__ res; TYPE_2__ input; } ;
typedef  TYPE_11__ h2o_req_t ;
typedef  int /*<<< orphan*/  h2o_ostream_t ;
struct TYPE_21__ {char* base; int /*<<< orphan*/  len; } ;
typedef  TYPE_12__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_filter_t ;
struct TYPE_31__ {int /*<<< orphan*/  loop; } ;
struct TYPE_27__ {TYPE_9__* ctx; } ;
struct TYPE_25__ {TYPE_12__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_10__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_X_TRAFFIC ; 
 scalar_t__ FUNC2 (int) ; 
 size_t HUNDRED_MS ; 
 size_t ONE_SECOND ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  add_token ; 
 scalar_t__ FUNC3 (TYPE_11__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_15__*,int) ; 
 int FUNC5 (TYPE_15__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,int /*<<< orphan*/ **) ; 
 size_t FUNC8 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_send ; 
 int /*<<< orphan*/  on_stop ; 

__attribute__((used)) static void FUNC11(h2o_filter_t *self, h2o_req_t *req, h2o_ostream_t **slot)
{
    throttle_resp_t *throttle;
    h2o_iovec_t traffic_header_value;
    size_t traffic_limit;

    if (req->res.status != 200)
        goto Next;
    if (FUNC6(req->input.method.base, req->input.method.len, FUNC1("HEAD")))
        goto Next;

    ssize_t xt_index;
    if ((xt_index = FUNC5(&req->res.headers, H2O_TOKEN_X_TRAFFIC, -1)) == -1)
        goto Next;

    traffic_header_value = req->res.headers.entries[xt_index].value;
    char *buf = traffic_header_value.base;

    if (FUNC2((traffic_limit = FUNC8(&buf, traffic_header_value.len)) == SIZE_MAX))
        goto Next;

    throttle = (void *)FUNC3(req, FUNC0(*throttle), sizeof(*throttle), slot);

    /* calculate the token increment per 100ms */
    throttle->token_inc = traffic_limit * HUNDRED_MS / ONE_SECOND;
    if (req->preferred_chunk_size > throttle->token_inc)
        req->preferred_chunk_size = throttle->token_inc;

    FUNC4(&req->res.headers, xt_index);

    throttle->super.do_send = on_send;
    throttle->super.stop = on_stop;
    throttle->ctx = req->conn->ctx;
    throttle->req = req;
    throttle->state.bufs.capacity = 0;
    throttle->state.bufs.size = 0;

    throttle->tokens = throttle->token_inc;
    slot = &throttle->super.next;

    FUNC9(&throttle->timeout_entry, add_token);
    FUNC10(throttle->ctx->loop, 100, &throttle->timeout_entry);

Next:
    FUNC7(req, slot);
}