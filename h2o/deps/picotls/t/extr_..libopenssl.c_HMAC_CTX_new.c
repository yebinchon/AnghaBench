
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;


 int HMAC_CTX_init (int *) ;
 int * OPENSSL_malloc (int) ;

__attribute__((used)) static HMAC_CTX *HMAC_CTX_new(void)
{
    HMAC_CTX *ctx;

    if ((ctx = OPENSSL_malloc(sizeof(*ctx))) == ((void*)0))
        return ((void*)0);
    HMAC_CTX_init(ctx);
    return ctx;
}
