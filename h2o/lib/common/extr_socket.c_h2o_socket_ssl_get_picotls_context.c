
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_context_t ;
typedef int SSL_CTX ;


 int * SSL_CTX_get_ex_data (int *,int ) ;
 int get_ptls_index () ;

ptls_context_t *h2o_socket_ssl_get_picotls_context(SSL_CTX *ossl)
{
    return SSL_CTX_get_ex_data(ossl, get_ptls_index());
}
