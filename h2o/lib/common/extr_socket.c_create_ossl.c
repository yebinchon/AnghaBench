
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_6__ {int ossl; int ssl_ctx; } ;


 int SSL_new (int ) ;
 int SSL_set_app_data (int ,TYPE_2__*) ;
 int setup_bio (TYPE_2__*) ;

__attribute__((used)) static void create_ossl(h2o_socket_t *sock)
{
    sock->ssl->ossl = SSL_new(sock->ssl->ssl_ctx);

    SSL_set_app_data(sock->ssl->ossl, sock);
    setup_bio(sock);
}
