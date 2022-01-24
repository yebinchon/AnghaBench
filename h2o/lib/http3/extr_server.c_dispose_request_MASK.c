#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * cb; } ;
struct TYPE_14__ {TYPE_4__ write_req; } ;
struct TYPE_9__ {size_t size; TYPE_5__* entries; } ;
struct TYPE_10__ {TYPE_1__ vecs; } ;
struct st_h2o_http3_server_stream_t {TYPE_7__ req; int /*<<< orphan*/ * req_body; TYPE_2__ sendbuf; } ;
struct st_h2o_http3_server_conn_t {scalar_t__ num_streams_req_streaming; } ;
struct TYPE_13__ {TYPE_3__* callbacks; } ;
typedef  TYPE_5__ h2o_sendvec_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* update_refcnt ) (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http3_server_conn_t*) ; 
 struct st_h2o_http3_server_conn_t* FUNC2 (struct st_h2o_http3_server_stream_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct st_h2o_http3_server_stream_t *stream)
{
    size_t i;

    /* release vectors */
    for (i = 0; i != stream->sendbuf.vecs.size; ++i) {
        h2o_sendvec_t *vec = stream->sendbuf.vecs.entries + i;
        if (vec->callbacks->update_refcnt != NULL)
            vec->callbacks->update_refcnt(vec, &stream->req, 0);
    }

    /* dispose request body buffer */
    if (stream->req_body != NULL)
        FUNC3(&stream->req_body);

    /* clean up request streaming */
    if (stream->req.write_req.cb != NULL) {
        struct st_h2o_http3_server_conn_t *conn = FUNC2(stream);
        FUNC0(conn->num_streams_req_streaming != 0);
        --conn->num_streams_req_streaming;
        FUNC1(conn);
    }

    /* dispose the request */
    FUNC4(&stream->req);
}