
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int * base; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 int EVP_DigestVerifyFinal (int *,int *,int ) ;
 int EVP_DigestVerifyInit (int *,int **,int ,int *,int *) ;
 int EVP_DigestVerifyUpdate (int *,int *,int ) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_PKEY_CTX_set_rsa_mgf1_md (int *,int ) ;
 int EVP_PKEY_CTX_set_rsa_padding (int *,int ) ;
 int EVP_PKEY_CTX_set_rsa_pss_saltlen (int *,int) ;
 scalar_t__ EVP_PKEY_RSA ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int EVP_sha256 () ;
 int PTLS_ALERT_DECRYPT_ERROR ;
 int PTLS_ERROR_LIBRARY ;
 int PTLS_ERROR_NO_MEMORY ;
 int RSA_PKCS1_PSS_PADDING ;

__attribute__((used)) static int verify_sign(void *verify_ctx, ptls_iovec_t data, ptls_iovec_t signature)
{
    EVP_PKEY *key = verify_ctx;
    EVP_MD_CTX *ctx = ((void*)0);
    EVP_PKEY_CTX *pkey_ctx = ((void*)0);
    int ret = 0;

    if (data.base == ((void*)0))
        goto Exit;

    if ((ctx = EVP_MD_CTX_create()) == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }
    if (EVP_DigestVerifyInit(ctx, &pkey_ctx, EVP_sha256(), ((void*)0), key) != 1) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if (EVP_PKEY_id(key) == EVP_PKEY_RSA) {
        if (EVP_PKEY_CTX_set_rsa_padding(pkey_ctx, RSA_PKCS1_PSS_PADDING) != 1) {
            ret = PTLS_ERROR_LIBRARY;
            goto Exit;
        }
        if (EVP_PKEY_CTX_set_rsa_pss_saltlen(pkey_ctx, -1) != 1) {
            ret = PTLS_ERROR_LIBRARY;
            goto Exit;
        }
        if (EVP_PKEY_CTX_set_rsa_mgf1_md(pkey_ctx, EVP_sha256()) != 1) {
            ret = PTLS_ERROR_LIBRARY;
            goto Exit;
        }
    }
    if (EVP_DigestVerifyUpdate(ctx, data.base, data.len) != 1) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if (EVP_DigestVerifyFinal(ctx, signature.base, signature.len) != 1) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    ret = 0;

Exit:
    if (ctx != ((void*)0))
        EVP_MD_CTX_destroy(ctx);
    EVP_PKEY_free(key);
    return ret;
}
