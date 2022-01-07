
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bluecard_info {int timer; int hw_state; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int CARD_ACTIVITY ;
 int CARD_HAS_ACTIVITY_LED ;
 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb (int,unsigned int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void bluecard_enable_activity_led(struct bluecard_info *info)
{
 unsigned int iobase = info->p_dev->resource[0]->start;


 if (timer_pending(&(info->timer)))
  return;

 set_bit(CARD_ACTIVITY, &(info->hw_state));

 if (test_bit(CARD_HAS_ACTIVITY_LED, &(info->hw_state))) {

  outb(0x18 | 0x60, iobase + 0x30);
 } else {

  outb(0x00, iobase + 0x30);
 }


 mod_timer(&(info->timer), jiffies + HZ / 10);
}
