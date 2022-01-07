
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct st_quicly_conn_streamgroup_state_t {int dummy; } ;
typedef int quicly_stream_id_t ;
struct TYPE_8__ {struct st_quicly_conn_streamgroup_state_t bidi; struct st_quicly_conn_streamgroup_state_t uni; } ;
struct TYPE_7__ {struct st_quicly_conn_streamgroup_state_t bidi; struct st_quicly_conn_streamgroup_state_t uni; } ;
struct TYPE_9__ {TYPE_2__ peer; TYPE_1__ host; } ;
struct TYPE_10__ {TYPE_3__ super; } ;
typedef TYPE_4__ quicly_conn_t ;


 scalar_t__ quicly_is_client (TYPE_4__*) ;
 scalar_t__ quicly_stream_is_client_initiated (int ) ;
 scalar_t__ quicly_stream_is_unidirectional (int ) ;

__attribute__((used)) static struct st_quicly_conn_streamgroup_state_t *get_streamgroup_state(quicly_conn_t *conn, quicly_stream_id_t stream_id)
{
    if (quicly_is_client(conn) == quicly_stream_is_client_initiated(stream_id)) {
        return quicly_stream_is_unidirectional(stream_id) ? &conn->super.host.uni : &conn->super.host.bidi;
    } else {
        return quicly_stream_is_unidirectional(stream_id) ? &conn->super.peer.uni : &conn->super.peer.bidi;
    }
}
