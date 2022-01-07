
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** H; } ;
typedef TYPE_1__ cf_sha512_context ;


 void* UINT64_C (int) ;
 int memset (TYPE_1__*,int ,int) ;

void cf_sha384_init(cf_sha512_context *ctx)
{
  memset(ctx, 0, sizeof *ctx);
  ctx->H[0] = UINT64_C(0xcbbb9d5dc1059ed8);
  ctx->H[1] = UINT64_C(0x629a292a367cd507);
  ctx->H[2] = UINT64_C(0x9159015a3070dd17);
  ctx->H[3] = UINT64_C(0x152fecd8f70e5939);
  ctx->H[4] = UINT64_C(0x67332667ffc00b31);
  ctx->H[5] = UINT64_C(0x8eb44a8768581511);
  ctx->H[6] = UINT64_C(0xdb0c2e0d64f98fa7);
  ctx->H[7] = UINT64_C(0x47b5481dbefa4fa4);
}
