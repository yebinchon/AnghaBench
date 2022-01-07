
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_context ;


 int md5_update (int *,unsigned char*,int) ;

void md5_hmac_update( md5_context *ctx, unsigned char *input, int ilen )
{
    md5_update( ctx, input, ilen );
}
