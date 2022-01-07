
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_OP_NO_TLSv1_1 ;
 int SSL_OP_NO_TLSv1_2 ;
 int SSLv23_method () ;
 scalar_t__ disable_tls_11_and_12 ;
 int * the_ssl_ctx ;

SSL_CTX *
get_ssl_ctx(void)
{
 if (the_ssl_ctx)
  return the_ssl_ctx;
 the_ssl_ctx = SSL_CTX_new(SSLv23_method());
 if (!the_ssl_ctx)
  return ((void*)0);
 if (disable_tls_11_and_12) {






 }
 return the_ssl_ctx;
}
