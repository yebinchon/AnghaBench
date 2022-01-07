
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int node; } ;
struct TYPE_8__ {TYPE_6__ ref; } ;
struct st_h2o_http3_server_stream_t {TYPE_1__ scheduler; } ;
struct TYPE_9__ {int quic; } ;
struct st_h2o_http3_server_conn_t {TYPE_2__ h3; } ;
struct TYPE_10__ {struct st_h2o_http3_server_stream_t* data; } ;
typedef TYPE_3__ quicly_stream_t ;
typedef int int64_t ;
typedef int h2o_http3_priority_element_type_t ;
struct TYPE_11__ {int node; } ;
typedef TYPE_4__ h2o_http2_scheduler_openref_t ;
typedef int h2o_http2_scheduler_node_t ;


 int H2O_HTTP3_ERROR_FRAME ;
 int H2O_HTTP3_ERROR_GENERAL_PROTOCOL ;




 int H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS ;
 int assert (int ) ;
 TYPE_4__* get_freestanding_scheduler_ref (struct st_h2o_http3_server_conn_t*,int,int) ;
 int * get_orphan_placeholder (struct st_h2o_http3_server_conn_t*) ;
 int h2o_http2_scheduler_is_open (TYPE_6__*) ;
 int quicly_get_ingress_max_streams (int ,int ) ;
 int quicly_get_peer_next_stream_id (int ,int ) ;
 TYPE_3__* quicly_get_stream (int ,int) ;
 int quicly_stream_is_client_initiated (int) ;
 int quicly_stream_is_unidirectional (int) ;

__attribute__((used)) static int get_scheduler_node(struct st_h2o_http3_server_conn_t *conn, h2o_http2_scheduler_node_t **node,
                              h2o_http3_priority_element_type_t type, int64_t id, h2o_http2_scheduler_node_t *root,
                              const char **err_desc)
{
    switch (type) {
    case 129: {


        quicly_stream_t *qs;
        if (!(quicly_stream_is_client_initiated(id) && !quicly_stream_is_unidirectional(id) &&
              id / 4 < quicly_get_ingress_max_streams(conn->h3.quic, 0))) {
            *err_desc = "invalid request stream id in PRIORITY frame";
            return H2O_HTTP3_ERROR_FRAME;
        }
        if ((qs = quicly_get_stream(conn->h3.quic, id)) != ((void*)0)) {
            struct st_h2o_http3_server_stream_t *stream = qs->data;
            assert(stream != ((void*)0));
            assert(h2o_http2_scheduler_is_open(&stream->scheduler.ref));
            *node = &stream->scheduler.ref.node;
        } else {
            h2o_http2_scheduler_openref_t *ref =
                get_freestanding_scheduler_ref(conn, id, id >= quicly_get_peer_next_stream_id(conn->h3.quic, 0));

            *node = ref != ((void*)0) ? &ref->node : get_orphan_placeholder(conn);
        }

    } break;

    case 130:
        *err_desc = "unexpectedly found a push stream id in PRIORITY frame";
        return H2O_HTTP3_ERROR_GENERAL_PROTOCOL;

    case 131:

        if (id >= H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS) {
            *err_desc = "invalid placeholder id found in PRIORITY frame";
            return H2O_HTTP3_ERROR_FRAME;
        }
        *node = &get_freestanding_scheduler_ref(conn, -1 - id, 1)->node;
        break;

    case 128:
        if (root == ((void*)0)) {
            *err_desc = "invalid depedency type in PRIORITY frame";
            return H2O_HTTP3_ERROR_FRAME;
        }
        *node = root;
        break;
    }

    return 0;
}
