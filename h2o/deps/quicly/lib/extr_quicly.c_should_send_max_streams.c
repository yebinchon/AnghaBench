
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct st_quicly_conn_streamgroup_state_t {int next_stream_id; int num_streams; } ;
typedef int quicly_maxsender_t ;
struct TYPE_10__ {struct st_quicly_conn_streamgroup_state_t bidi; struct st_quicly_conn_streamgroup_state_t uni; } ;
struct TYPE_9__ {TYPE_4__ peer; } ;
struct TYPE_7__ {int * bidi; int * uni; } ;
struct TYPE_8__ {TYPE_1__ max_streams; } ;
struct TYPE_11__ {TYPE_3__ super; TYPE_2__ ingress; } ;
typedef TYPE_5__ quicly_conn_t ;


 int quicly_maxsender_should_send_max (int *,int,int ,int) ;

__attribute__((used)) static int should_send_max_streams(quicly_conn_t *conn, int uni)
{
    quicly_maxsender_t *maxsender;
    if ((maxsender = uni ? conn->ingress.max_streams.uni : conn->ingress.max_streams.bidi) == ((void*)0))
        return 0;

    struct st_quicly_conn_streamgroup_state_t *group = uni ? &conn->super.peer.uni : &conn->super.peer.bidi;
    if (!quicly_maxsender_should_send_max(maxsender, group->next_stream_id / 4, group->num_streams, 768))
        return 0;

    return 1;
}
