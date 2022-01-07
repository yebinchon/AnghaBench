
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int h2o_socket_error_ssl_handshake ;
 int on_handshake_complete (int *,int ) ;

__attribute__((used)) static void on_handshake_failure_ossl111(h2o_socket_t *sock, const char *err)
{
    on_handshake_complete(sock, h2o_socket_error_ssl_handshake);
}
