
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* function ) (struct timer_list*) ;scalar_t__ expires; } ;
struct floppy_state {int timeout_pending; TYPE_1__ timeout; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void set_timeout(struct floppy_state *fs, int nticks,
   void (*proc)(struct timer_list *t))
{
 if (fs->timeout_pending)
  del_timer(&fs->timeout);
 fs->timeout.expires = jiffies + nticks;
 fs->timeout.function = proc;
 add_timer(&fs->timeout);
 fs->timeout_pending = 1;
}
