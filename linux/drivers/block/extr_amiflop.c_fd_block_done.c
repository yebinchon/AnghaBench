
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_5__ {int dsklen; } ;
struct TYPE_4__ {scalar_t__ expires; } ;


 int IRQ_HANDLED ;
 int add_timer (TYPE_1__*) ;
 int block_flag ;
 TYPE_2__ custom ;
 scalar_t__ jiffies ;
 TYPE_1__ post_write_timer ;
 int post_write_timer_drive ;
 int selected ;
 int wait_fd_block ;
 int wake_up (int *) ;
 int writepending ;

__attribute__((used)) static irqreturn_t fd_block_done(int irq, void *dummy)
{
 if (block_flag)
  custom.dsklen = 0x4000;

 if (block_flag == 2) {
  writepending = 2;
  post_write_timer.expires = jiffies + 1;
  post_write_timer_drive = selected;
  add_timer(&post_write_timer);
 }
 else {
  block_flag = 0;
  wake_up (&wait_fd_block);
 }
 return IRQ_HANDLED;
}
