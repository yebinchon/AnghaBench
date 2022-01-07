
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct heartbeat_data {int flags; int nr_bits; int timer; } ;


 int FSHIFT ;
 int HEARTBEAT_INVERTED ;
 int* avenrun ;
 struct heartbeat_data* from_timer (int ,struct timer_list*,int ) ;
 struct heartbeat_data* hd ;
 int heartbeat_toggle_bit (struct heartbeat_data*,unsigned int,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer ;

__attribute__((used)) static void heartbeat_timer(struct timer_list *t)
{
 struct heartbeat_data *hd = from_timer(hd, t, timer);
 static unsigned bit = 0, up = 1;

 heartbeat_toggle_bit(hd, bit, hd->flags & HEARTBEAT_INVERTED);

 bit += up;
 if ((bit == 0) || (bit == (hd->nr_bits)-1))
  up = -up;

 mod_timer(&hd->timer, jiffies + (110 - ((300 << FSHIFT) /
   ((avenrun[0] / 5) + (3 << FSHIFT)))));
}
