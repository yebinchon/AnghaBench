
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmpbuf ;
struct TYPE_6__ {unsigned char* opad; } ;
typedef TYPE_1__ sha1_context ;


 int memset (unsigned char*,int ,int) ;
 int sha1_finish (TYPE_1__*,unsigned char*) ;
 int sha1_starts (TYPE_1__*) ;
 int sha1_update (TYPE_1__*,unsigned char*,int) ;

void sha1_hmac_finish( sha1_context *ctx, unsigned char output[20] )
{
    unsigned char tmpbuf[20];

    sha1_finish( ctx, tmpbuf );
    sha1_starts( ctx );
    sha1_update( ctx, ctx->opad, 64 );
    sha1_update( ctx, tmpbuf, 20 );
    sha1_finish( ctx, output );

    memset( tmpbuf, 0, sizeof( tmpbuf ) );
}
