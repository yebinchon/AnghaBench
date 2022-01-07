
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int send_state; int inbufcnt; int * inbufs; } ;
struct TYPE_8__ {TYPE_1__ pending_final; scalar_t__ sending; } ;
struct st_h2o_http1_finalostream_t {TYPE_2__ informational; int super; } ;
struct TYPE_10__ {scalar_t__ _ostr_top; } ;
struct st_h2o_http1_conn_t {TYPE_5__ req; } ;
struct TYPE_9__ {struct st_h2o_http1_conn_t* data; } ;
typedef TYPE_3__ h2o_socket_t ;


 int close_connection (struct st_h2o_http1_conn_t*,int) ;
 int do_send_informational (struct st_h2o_http1_finalostream_t*,TYPE_3__*) ;
 int finalostream_send (int *,TYPE_5__*,int *,int ,int ) ;

__attribute__((used)) static void on_send_informational(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_http1_conn_t *conn = sock->data;
    struct st_h2o_http1_finalostream_t *self = (struct st_h2o_http1_finalostream_t *)conn->req._ostr_top;
    if (err != ((void*)0)) {
        close_connection(conn, 1);
        return;
    }

    self->informational.sending = 0;

    if (self->informational.pending_final.inbufs != ((void*)0)) {
        finalostream_send(&self->super, &conn->req, self->informational.pending_final.inbufs,
                          self->informational.pending_final.inbufcnt, self->informational.pending_final.send_state);
        return;
    }

    do_send_informational(self, sock);
}
