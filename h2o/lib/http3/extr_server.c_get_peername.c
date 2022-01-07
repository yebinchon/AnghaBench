
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quic; } ;
struct st_h2o_http3_server_conn_t {TYPE_1__ h3; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int h2o_conn_t ;


 int memcpy (struct sockaddr*,struct sockaddr*,int ) ;
 struct sockaddr* quicly_get_peername (int ) ;
 int quicly_get_socklen (struct sockaddr*) ;

__attribute__((used)) static socklen_t get_peername(h2o_conn_t *_conn, struct sockaddr *sa)
{
    struct st_h2o_http3_server_conn_t *conn = (void *)_conn;
    struct sockaddr *src = quicly_get_peername(conn->h3.quic);
    socklen_t len = quicly_get_socklen(src);
    memcpy(sa, src, len);
    return len;
}
