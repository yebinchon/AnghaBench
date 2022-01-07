
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha1_context ;


 int sha1_update (int *,unsigned char const*,size_t) ;

void sha1_hmac_update( sha1_context *ctx, const unsigned char *input, size_t ilen )
{
    sha1_update( ctx, input, ilen );
}
