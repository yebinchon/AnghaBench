
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ipad; } ;
typedef TYPE_1__ sha1_context ;


 int sha1_starts (TYPE_1__*) ;
 int sha1_update (TYPE_1__*,int ,int) ;

void sha1_hmac_reset( sha1_context *ctx )
{
    sha1_starts( ctx );
    sha1_update( ctx, ctx->ipad, 64 );
}
