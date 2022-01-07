
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct img_ascii_lcd_ctx {unsigned int scroll_pos; unsigned int message_len; scalar_t__ scroll_rate; int timer; TYPE_1__* cfg; int * message; int * curr; } ;
struct TYPE_2__ {unsigned int num_chars; int (* update ) (struct img_ascii_lcd_ctx*) ;} ;


 struct img_ascii_lcd_ctx* ctx ;
 struct img_ascii_lcd_ctx* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int stub1 (struct img_ascii_lcd_ctx*) ;
 int timer ;

__attribute__((used)) static void img_ascii_lcd_scroll(struct timer_list *t)
{
 struct img_ascii_lcd_ctx *ctx = from_timer(ctx, t, timer);
 unsigned int i, ch = ctx->scroll_pos;
 unsigned int num_chars = ctx->cfg->num_chars;


 for (i = 0; i < num_chars;) {

  for (; i < num_chars && ch < ctx->message_len; i++, ch++)
   ctx->curr[i] = ctx->message[ch];


  ch = 0;
 }


 ctx->cfg->update(ctx);


 ctx->scroll_pos++;
 ctx->scroll_pos %= ctx->message_len;


 if (ctx->message_len > ctx->cfg->num_chars)
  mod_timer(&ctx->timer, jiffies + ctx->scroll_rate);
}
