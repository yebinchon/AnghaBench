
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* bitmap_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int enabled; int bitmap_s2_d; int bitmap_s2_c; int bitmap_s2_b; int bitmap_s2_a; int bitmap_s1_d; int bitmap_s1_c; int bitmap_s1_b; int bitmap_s1_a; } ;
typedef TYPE_2__ bitmap_ctx_t ;


 int hcfree (int ) ;
 int memset (TYPE_2__*,int ,int) ;

void bitmap_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  bitmap_ctx_t *bitmap_ctx = hashcat_ctx->bitmap_ctx;

  if (bitmap_ctx->enabled == 0) return;

  hcfree (bitmap_ctx->bitmap_s1_a);
  hcfree (bitmap_ctx->bitmap_s1_b);
  hcfree (bitmap_ctx->bitmap_s1_c);
  hcfree (bitmap_ctx->bitmap_s1_d);
  hcfree (bitmap_ctx->bitmap_s2_a);
  hcfree (bitmap_ctx->bitmap_s2_b);
  hcfree (bitmap_ctx->bitmap_s2_c);
  hcfree (bitmap_ctx->bitmap_s2_d);

  memset (bitmap_ctx, 0, sizeof (bitmap_ctx_t));
}
