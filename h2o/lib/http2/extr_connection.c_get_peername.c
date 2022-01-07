
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {int sock; } ;
typedef TYPE_1__ h2o_http2_conn_t ;
typedef int h2o_conn_t ;


 int h2o_socket_getpeername (int ,struct sockaddr*) ;

__attribute__((used)) static socklen_t get_peername(h2o_conn_t *_conn, struct sockaddr *sa)
{
    h2o_http2_conn_t *conn = (void *)_conn;
    return h2o_socket_getpeername(conn->sock, sa);
}
