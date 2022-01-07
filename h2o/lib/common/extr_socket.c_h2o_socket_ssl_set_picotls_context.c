
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_context_t ;
typedef int SSL_CTX ;


 int SSL_CTX_set_ex_data (int *,int ,int *) ;
 int get_ptls_index () ;

void h2o_socket_ssl_set_picotls_context(SSL_CTX *ossl, ptls_context_t *ptls)
{
    SSL_CTX_set_ex_data(ossl, get_ptls_index(), ptls);
}
