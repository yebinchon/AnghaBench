
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int HMAC_CTX ;
typedef int EVP_CIPHER_CTX ;


 int ticket_key_callback (unsigned char*,unsigned char*,int *,int *,int) ;

__attribute__((used)) static int ticket_key_callback_ossl(SSL *ssl, unsigned char *key_name, unsigned char *iv, EVP_CIPHER_CTX *ctx, HMAC_CTX *hctx,
                                    int enc)
{
    return ticket_key_callback(key_name, iv, ctx, hctx, enc);
}
