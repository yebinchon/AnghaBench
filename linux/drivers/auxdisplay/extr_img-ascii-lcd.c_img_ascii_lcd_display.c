
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct img_ascii_lcd_ctx {char* message; int message_len; int timer; scalar_t__ scroll_pos; TYPE_1__* pdev; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int del_timer_sync (int *) ;
 int devm_kfree (int *,char*) ;
 char* devm_kmalloc (int *,int,int ) ;
 int img_ascii_lcd_scroll (int *) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int img_ascii_lcd_display(struct img_ascii_lcd_ctx *ctx,
        const char *msg, ssize_t count)
{
 char *new_msg;


 del_timer_sync(&ctx->timer);

 if (count == -1)
  count = strlen(msg);


 if (msg[count - 1] == '\n')
  count--;

 new_msg = devm_kmalloc(&ctx->pdev->dev, count + 1, GFP_KERNEL);
 if (!new_msg)
  return -ENOMEM;

 memcpy(new_msg, msg, count);
 new_msg[count] = 0;

 if (ctx->message)
  devm_kfree(&ctx->pdev->dev, ctx->message);

 ctx->message = new_msg;
 ctx->message_len = count;
 ctx->scroll_pos = 0;


 img_ascii_lcd_scroll(&ctx->timer);

 return 0;
}
