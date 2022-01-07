
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_context_t {int evp; } ;
typedef int ptls_cipher_context_t ;


 int EVP_EncryptInit_ex (int ,int *,int *,int *,void const*) ;
 int assert (int) ;

__attribute__((used)) static void cipher_do_init(ptls_cipher_context_t *_ctx, const void *iv)
{
    struct cipher_context_t *ctx = (struct cipher_context_t *)_ctx;
    int ret;
    ret = EVP_EncryptInit_ex(ctx->evp, ((void*)0), ((void*)0), ((void*)0), iv);
    assert(ret);
}
