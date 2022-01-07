
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int h2o_http3_conn_t ;
struct TYPE_2__ {int (* destroy_connection ) (int *) ;} ;


 TYPE_1__ H2O_HTTP3_CONN_CALLBACKS ;
 int num_quic_connections (int) ;
 int on_connection_close () ;
 int stub1 (int *) ;

__attribute__((used)) static void on_http3_conn_destroy(h2o_http3_conn_t *conn)
{
    on_connection_close();
    num_quic_connections(-1);

    H2O_HTTP3_CONN_CALLBACKS.destroy_connection(conn);
}
