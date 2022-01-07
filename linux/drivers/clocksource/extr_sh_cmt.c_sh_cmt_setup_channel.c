
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_cmt_device {TYPE_2__* pdev; TYPE_1__* info; int mapbase; } ;
struct sh_cmt_channel {unsigned int index; unsigned int hwidx; unsigned int timer_bit; int max_match_value; int match_value; int cs_enabled; int lock; int iostart; int ioctrl; struct sh_cmt_device* cmt; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int model; int width; } ;







 int dev_err (int *,char*,unsigned int) ;
 int dev_name (int *) ;
 int raw_spin_lock_init (int *) ;
 int sh_cmt_register (struct sh_cmt_channel*,int ,int,int) ;

__attribute__((used)) static int sh_cmt_setup_channel(struct sh_cmt_channel *ch, unsigned int index,
    unsigned int hwidx, bool clockevent,
    bool clocksource, struct sh_cmt_device *cmt)
{
 int ret;


 if (!clockevent && !clocksource)
  return 0;

 ch->cmt = cmt;
 ch->index = index;
 ch->hwidx = hwidx;
 ch->timer_bit = hwidx;






 switch (cmt->info->model) {
 case 130:
  ch->ioctrl = cmt->mapbase + 2 + ch->hwidx * 6;
  break;
 case 129:
 case 128:
  ch->ioctrl = cmt->mapbase + 0x10 + ch->hwidx * 0x10;
  break;
 case 132:
 case 131:
  ch->iostart = cmt->mapbase + ch->hwidx * 0x100;
  ch->ioctrl = ch->iostart + 0x10;
  ch->timer_bit = 0;
  break;
 }

 if (cmt->info->width == (sizeof(ch->max_match_value) * 8))
  ch->max_match_value = ~0;
 else
  ch->max_match_value = (1 << cmt->info->width) - 1;

 ch->match_value = ch->max_match_value;
 raw_spin_lock_init(&ch->lock);

 ret = sh_cmt_register(ch, dev_name(&cmt->pdev->dev),
         clockevent, clocksource);
 if (ret) {
  dev_err(&cmt->pdev->dev, "ch%u: registration failed\n",
   ch->index);
  return ret;
 }
 ch->cs_enabled = 0;

 return 0;
}
