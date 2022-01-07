
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_state {scalar_t__ state; int wanted; int wait; } ;
typedef enum swim_state { ____Placeholder_swim_state } swim_state ;


 int EINTR ;
 scalar_t__ available ;
 scalar_t__ idle ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swim3_dbg (char*,char*) ;
 int swim3_lock ;
 scalar_t__ wait_event_interruptible_lock_irq (int ,int,int ) ;
 int wait_event_lock_irq (int ,int,int ) ;

__attribute__((used)) static int grab_drive(struct floppy_state *fs, enum swim_state state,
        int interruptible)
{
 unsigned long flags;

 swim3_dbg("%s", "-> grab drive\n");

 spin_lock_irqsave(&swim3_lock, flags);
 if (fs->state != idle && fs->state != available) {
  ++fs->wanted;

  if (!interruptible)
   wait_event_lock_irq(fs->wait,
                                        fs->state == available,
                                        swim3_lock);
  else if (wait_event_interruptible_lock_irq(fs->wait,
     fs->state == available,
     swim3_lock)) {
   --fs->wanted;
   spin_unlock_irqrestore(&swim3_lock, flags);
   return -EINTR;
  }
  --fs->wanted;
 }
 fs->state = state;
 spin_unlock_irqrestore(&swim3_lock, flags);

 return 0;
}
