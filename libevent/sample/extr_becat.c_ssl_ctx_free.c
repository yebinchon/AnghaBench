
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_context {int cert; int pkey; int ctx; } ;


 int EVP_PKEY_free (int ) ;
 int SSL_CTX_free (int ) ;
 int X509_free (int ) ;

__attribute__((used)) static void ssl_ctx_free(struct ssl_context *ssl)
{
 SSL_CTX_free(ssl->ctx);
 EVP_PKEY_free(ssl->pkey);
 X509_free(ssl->cert);
}
