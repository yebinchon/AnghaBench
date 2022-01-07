
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int quic; TYPE_1__* callbacks; } ;
typedef TYPE_2__ h2o_http3_conn_t ;
struct TYPE_6__ {int (* destroy_connection ) (TYPE_2__*) ;} ;




 int h2o_http3_schedule_timer (TYPE_2__*) ;
 int quicly_close (int ,int,char const*) ;
 int quicly_get_state (int ) ;
 int stub1 (TYPE_2__*) ;

void h2o_http3_close_connection(h2o_http3_conn_t *conn, int err, const char *reason_phrase)
{
    switch (quicly_get_state(conn->quic)) {
    case 128:
        conn->callbacks->destroy_connection(conn);
        break;
    case 129:
        quicly_close(conn->quic, err, reason_phrase);
        h2o_http3_schedule_timer(conn);
        break;
    default:

        break;
    }
}
