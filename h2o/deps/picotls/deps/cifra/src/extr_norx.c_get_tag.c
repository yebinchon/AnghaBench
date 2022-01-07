
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * s; } ;
typedef TYPE_1__ norx32_ctx ;


 int DOMAIN_TAG ;
 int permute (TYPE_1__*) ;
 int switch_domain (TYPE_1__*,int ) ;
 int write32_le (int ,int *) ;

__attribute__((used)) static void get_tag(norx32_ctx *ctx, uint8_t tag[16])
{
  switch_domain(ctx, DOMAIN_TAG);
  permute(ctx);
  write32_le(ctx->s[0], tag + 0);
  write32_le(ctx->s[1], tag + 4);
  write32_le(ctx->s[2], tag + 8);
  write32_le(ctx->s[3], tag + 12);
}
