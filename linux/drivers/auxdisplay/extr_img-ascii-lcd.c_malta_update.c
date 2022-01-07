
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct img_ascii_lcd_ctx {int * curr; scalar_t__ offset; int regmap; TYPE_1__* cfg; } ;
struct TYPE_2__ {unsigned int num_chars; } ;


 int pr_err_ratelimited (char*,int) ;
 int regmap_write (int ,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void malta_update(struct img_ascii_lcd_ctx *ctx)
{
 unsigned int i;
 int err = 0;

 for (i = 0; i < ctx->cfg->num_chars; i++) {
  err = regmap_write(ctx->regmap,
       ctx->offset + (i * 8), ctx->curr[i]);
  if (err)
   break;
 }

 if (unlikely(err))
  pr_err_ratelimited("Failed to update LCD display: %d\n", err);
}
