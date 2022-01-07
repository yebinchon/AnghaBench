
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_context {int ctx; } ;
typedef int SSL_METHOD ;


 int SSL_CTX_new (int const*) ;
 int * TLS_method () ;
 int ssl_ctx_free (struct ssl_context*) ;
 int ssl_init () ;
 scalar_t__ ssl_load_cert (struct ssl_context*) ;
 scalar_t__ ssl_load_key (struct ssl_context*) ;

__attribute__((used)) static int ssl_ctx_init(struct ssl_context *ssl)
{
 const SSL_METHOD *method;

 ssl_init();

 method = TLS_method();
 if (!method)
  goto err;
 ssl->ctx = SSL_CTX_new(method);

 if (ssl_load_key(ssl))
  goto err;
 if (ssl_load_cert(ssl))
  goto err;

 return 0;

err:
 ssl_ctx_free(ssl);
 return 1;
}
