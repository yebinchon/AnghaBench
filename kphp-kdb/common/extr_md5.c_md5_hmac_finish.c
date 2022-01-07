
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmpbuf ;
struct TYPE_6__ {unsigned char* opad; } ;
typedef TYPE_1__ md5_context ;


 int md5_finish (TYPE_1__*,unsigned char*) ;
 int md5_starts (TYPE_1__*) ;
 int md5_update (TYPE_1__*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

void md5_hmac_finish( md5_context *ctx, unsigned char output[16] )
{
    unsigned char tmpbuf[16];

    md5_finish( ctx, tmpbuf );
    md5_starts( ctx );
    md5_update( ctx, ctx->opad, 64 );
    md5_update( ctx, tmpbuf, 16 );
    md5_finish( ctx, output );

    memset( tmpbuf, 0, sizeof( tmpbuf ) );
}
