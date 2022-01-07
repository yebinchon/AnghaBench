
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HMAC_CTX ;


 int HMAC_CTX_cleanup (int *) ;
 int memzero (int *,int) ;

__attribute__((used)) static inline int HMAC_CTX_reset(HMAC_CTX *ctx)
{
 HMAC_CTX_cleanup(ctx);
 memzero(ctx, sizeof(HMAC_CTX));
 return 1;
}
