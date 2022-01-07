
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int * s; } ;
typedef TYPE_1__ norx32_ctx ;


 int permute (TYPE_1__*) ;

__attribute__((used)) static void switch_domain(norx32_ctx *ctx, uint32_t constant)
{
  ctx->s[15] ^= constant;
  permute(ctx);
}
