#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  node; } ;
struct TYPE_8__ {TYPE_6__ ref; } ;
struct st_h2o_http3_server_stream_t {TYPE_1__ scheduler; } ;
struct TYPE_9__ {int /*<<< orphan*/  quic; } ;
struct st_h2o_http3_server_conn_t {TYPE_2__ h3; } ;
struct TYPE_10__ {struct st_h2o_http3_server_stream_t* data; } ;
typedef  TYPE_3__ quicly_stream_t ;
typedef  int int64_t ;
typedef  int h2o_http3_priority_element_type_t ;
struct TYPE_11__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_4__ h2o_http2_scheduler_openref_t ;
typedef  int /*<<< orphan*/  h2o_http2_scheduler_node_t ;

/* Variables and functions */
 int H2O_HTTP3_ERROR_FRAME ; 
 int H2O_HTTP3_ERROR_GENERAL_PROTOCOL ; 
#define  H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER 131 
#define  H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PUSH_STREAM 130 
#define  H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM 129 
#define  H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT 128 
 int H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct st_h2o_http3_server_conn_t*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct st_h2o_http3_server_conn_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct st_h2o_http3_server_conn_t *conn, h2o_http2_scheduler_node_t **node,
                              h2o_http3_priority_element_type_t type, int64_t id, h2o_http2_scheduler_node_t *root,
                              const char **err_desc)
{
    switch (type) {
    case H2O_HTTP3_PRIORITY_ELEMENT_TYPE_REQUEST_STREAM: {

        /* Return the scheduler node of an existing request stream, or create a queued entry and returns that */
        quicly_stream_t *qs;
        if (!(FUNC7(id) && !FUNC8(id) &&
              id / 4 < FUNC4(conn->h3.quic, 0))) {
            *err_desc = "invalid request stream id in PRIORITY frame";
            return H2O_HTTP3_ERROR_FRAME;
        }
        if ((qs = FUNC6(conn->h3.quic, id)) != NULL) {
            struct st_h2o_http3_server_stream_t *stream = qs->data;
            FUNC0(stream != NULL);
            FUNC0(FUNC3(&stream->scheduler.ref));
            *node = &stream->scheduler.ref.node;
        } else {
            h2o_http2_scheduler_openref_t *ref =
                FUNC1(conn, id, id >= FUNC5(conn->h3.quic, 0));
            /* ref being NULL means that the stream has been closed and the PRIORITY information is no longer available */
            *node = ref != NULL ? &ref->node : FUNC2(conn);
        }

    } break;

    case H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PUSH_STREAM:
        *err_desc = "unexpectedly found a push stream id in PRIORITY frame";
        return H2O_HTTP3_ERROR_GENERAL_PROTOCOL;

    case H2O_HTTP3_PRIORITY_ELEMENT_TYPE_PLACEHOLDER:
        /* return a placeholder, initializing it to the default values if it is not open yet */
        if (id >= H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS) {
            *err_desc = "invalid placeholder id found in PRIORITY frame";
            return H2O_HTTP3_ERROR_FRAME;
        }
        *node = &FUNC1(conn, -1 - id, 1)->node;
        break;

    case H2O_HTTP3_PRIORITY_ELEMENT_TYPE_ROOT:
        if (root == NULL) {
            *err_desc = "invalid depedency type in PRIORITY frame";
            return H2O_HTTP3_ERROR_FRAME;
        }
        *node = root;
        break;
    }

    return 0;
}