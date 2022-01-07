
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int req; int _link; } ;
typedef TYPE_2__ h2o_http2_stream_t ;
struct TYPE_7__ {int blocked_streams; } ;
struct TYPE_9__ {TYPE_1__ early_data; TYPE_4__* sock; } ;
typedef TYPE_3__ h2o_http2_conn_t ;
struct TYPE_10__ {int * ssl; } ;


 int h2o_linklist_insert (int *,int *) ;
 int h2o_replay_request_deferred (int *) ;
 scalar_t__ h2o_socket_ssl_is_early_data (TYPE_4__*) ;

void h2o_http2_conn_register_for_replay(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    if (conn->sock->ssl != ((void*)0) && h2o_socket_ssl_is_early_data(conn->sock)) {
        h2o_linklist_insert(&conn->early_data.blocked_streams, &stream->_link);
    } else {
        h2o_replay_request_deferred(&stream->req);
    }
}
