
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ id; } ;
typedef TYPE_1__ git_oid ;
struct TYPE_7__ {int size; int * H; } ;
typedef TYPE_2__ git_hash_sha1_ctx ;


 int git_hash_sha1_update (TYPE_2__*,...) ;
 unsigned int htonl (int ) ;
 int put_be32 (scalar_t__,int ) ;

int git_hash_sha1_final(git_oid *out, git_hash_sha1_ctx *ctx)
{
 static const unsigned char pad[64] = { 0x80 };
 unsigned int padlen[2];
 int i;


 padlen[0] = htonl((uint32_t)(ctx->size >> 29));
 padlen[1] = htonl((uint32_t)(ctx->size << 3));

 i = ctx->size & 63;
 git_hash_sha1_update(ctx, pad, 1+ (63 & (55 - i)));
 git_hash_sha1_update(ctx, padlen, 8);


 for (i = 0; i < 5; i++)
  put_be32(out->id + i*4, ctx->H[i]);

 return 0;
}
