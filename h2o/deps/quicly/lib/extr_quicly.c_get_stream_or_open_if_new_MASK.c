#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct st_quicly_conn_streamgroup_state_t {int next_stream_id; int /*<<< orphan*/  num_streams; } ;
struct TYPE_29__ {int stream_id; } ;
typedef  TYPE_8__ quicly_stream_t ;
struct TYPE_24__ {int bidi_local; } ;
struct TYPE_25__ {TYPE_3__ max_stream_data; } ;
struct TYPE_26__ {TYPE_4__ transport_params; } ;
struct TYPE_28__ {TYPE_6__* ctx; TYPE_5__ peer; } ;
struct TYPE_30__ {TYPE_7__ super; } ;
typedef  TYPE_9__ quicly_conn_t ;
struct TYPE_22__ {int uni; int bidi_remote; } ;
struct TYPE_23__ {TYPE_1__ max_stream_data; } ;
struct TYPE_27__ {TYPE_10__* stream_open; TYPE_2__ transport_params; } ;
struct TYPE_21__ {int (* cb ) (TYPE_10__*,TYPE_8__*) ;} ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 int QUICLY_TRANSPORT_ERROR_STREAM_LIMIT ; 
 struct st_quicly_conn_streamgroup_state_t* FUNC0 (TYPE_9__*,int) ; 
 TYPE_8__* FUNC1 (TYPE_9__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_9__*,scalar_t__) ; 
 TYPE_8__* FUNC3 (TYPE_9__*,int) ; 
 scalar_t__ FUNC4 (TYPE_9__*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (TYPE_10__*,TYPE_8__*) ; 

__attribute__((used)) static int FUNC8(quicly_conn_t *conn, uint64_t stream_id, quicly_stream_t **stream)
{
    int ret = 0;

    if ((*stream = FUNC3(conn, stream_id)) != NULL)
        goto Exit;

    if (FUNC5(stream_id) != FUNC4(conn)) {
        /* check if stream id is within the bounds */
        if (stream_id / 4 >= FUNC2(conn, FUNC6(stream_id))) {
            ret = QUICLY_TRANSPORT_ERROR_STREAM_LIMIT;
            goto Exit;
        }
        /* open new streams upto given id */
        struct st_quicly_conn_streamgroup_state_t *group = FUNC0(conn, stream_id);
        if (group->next_stream_id <= stream_id) {
            uint64_t max_stream_data_local, max_stream_data_remote;
            if (FUNC6(stream_id)) {
                max_stream_data_local = conn->super.ctx->transport_params.max_stream_data.uni;
                max_stream_data_remote = 0;
            } else {
                max_stream_data_local = conn->super.ctx->transport_params.max_stream_data.bidi_remote;
                max_stream_data_remote = conn->super.peer.transport_params.max_stream_data.bidi_local;
            }
            do {
                if ((*stream = FUNC1(conn, group->next_stream_id, (uint32_t)max_stream_data_local, max_stream_data_remote)) ==
                    NULL) {
                    ret = PTLS_ERROR_NO_MEMORY;
                    goto Exit;
                }
                if ((ret = conn->super.ctx->stream_open->cb(conn->super.ctx->stream_open, *stream)) != 0) {
                    *stream = NULL;
                    goto Exit;
                }
                ++group->num_streams;
                group->next_stream_id += 4;
            } while (stream_id != (*stream)->stream_id);
        }
    }

Exit:
    return ret;
}