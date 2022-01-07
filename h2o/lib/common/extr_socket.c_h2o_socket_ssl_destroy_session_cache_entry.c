
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ h2o_iovec_t ;
typedef int SSL_SESSION ;


 int SSL_SESSION_free (int *) ;

void h2o_socket_ssl_destroy_session_cache_entry(h2o_iovec_t value)
{
    SSL_SESSION *session = (SSL_SESSION *)value.base;
    SSL_SESSION_free(session);
}
