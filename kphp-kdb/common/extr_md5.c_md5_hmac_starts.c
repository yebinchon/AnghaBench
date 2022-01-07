
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sum ;
struct TYPE_5__ {unsigned char* ipad; unsigned char* opad; } ;
typedef TYPE_1__ md5_context ;


 int md5 (unsigned char*,int,unsigned char*) ;
 int md5_starts (TYPE_1__*) ;
 int md5_update (TYPE_1__*,unsigned char*,int) ;
 int memset (unsigned char*,int,int) ;

void md5_hmac_starts( md5_context *ctx, unsigned char *key, int keylen )
{
    int i;
    unsigned char sum[16];

    if( keylen > 64 )
    {
        md5( key, keylen, sum );
        keylen = 16;
        key = sum;
    }

    memset( ctx->ipad, 0x36, 64 );
    memset( ctx->opad, 0x5C, 64 );

    for( i = 0; i < keylen; i++ )
    {
        ctx->ipad[i] = (unsigned char)( ctx->ipad[i] ^ key[i] );
        ctx->opad[i] = (unsigned char)( ctx->opad[i] ^ key[i] );
    }

    md5_starts( ctx );
    md5_update( ctx, ctx->ipad, 64 );

    memset( sum, 0, sizeof( sum ) );
}
