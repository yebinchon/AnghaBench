
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct bluecard_info {int timer; int hw_state; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int CARD_ACTIVITY ;
 int HZ ;
 int clear_bit (int ,int *) ;
 struct bluecard_info* from_timer (int ,struct timer_list*,int ) ;
 struct bluecard_info* info ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb (int,unsigned int) ;
 scalar_t__ test_bit (int ,int *) ;
 int timer ;

__attribute__((used)) static void bluecard_activity_led_timeout(struct timer_list *t)
{
 struct bluecard_info *info = from_timer(info, t, timer);
 unsigned int iobase = info->p_dev->resource[0]->start;

 if (test_bit(CARD_ACTIVITY, &(info->hw_state))) {

  clear_bit(CARD_ACTIVITY, &(info->hw_state));
  mod_timer(&(info->timer), jiffies + HZ / 10);
 }


 outb(0x08 | 0x20, iobase + 0x30);
}
