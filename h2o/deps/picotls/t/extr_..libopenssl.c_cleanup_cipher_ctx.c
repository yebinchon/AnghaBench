
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_cleanup (int *) ;
 int abort () ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void cleanup_cipher_ctx(EVP_CIPHER_CTX *ctx)
{
    if (!EVP_CIPHER_CTX_cleanup(ctx)) {
        fprintf(stderr, "EVP_CIPHER_CTX_cleanup() failed\n");
        abort();
    }
}
