
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int size; int * state; } ;
typedef TYPE_1__ blk_SHA256_CTX ;


 int blk_SHA256_Update (TYPE_1__*,...) ;
 unsigned int htonl (int ) ;
 int put_be32 (unsigned char*,int ) ;

void blk_SHA256_Final(unsigned char *digest, blk_SHA256_CTX *ctx)
{
 static const unsigned char pad[64] = { 0x80 };
 unsigned int padlen[2];
 int i;


 padlen[0] = htonl((uint32_t)(ctx->size >> 29));
 padlen[1] = htonl((uint32_t)(ctx->size << 3));

 i = ctx->size & 63;
 blk_SHA256_Update(ctx, pad, 1 + (63 & (55 - i)));
 blk_SHA256_Update(ctx, padlen, 8);


 for (i = 0; i < 8; i++, digest += sizeof(uint32_t))
  put_be32(digest, ctx->state[i]);
}
