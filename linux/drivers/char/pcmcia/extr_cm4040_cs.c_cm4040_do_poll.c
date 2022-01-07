
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct reader_dev {int poll_timer; int poll_wait; scalar_t__ buffer_status; int write_wait; int read_wait; TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {scalar_t__ start; } ;


 unsigned int BSR_BULK_IN_FULL ;
 unsigned int BSR_BULK_OUT_FULL ;
 int BS_READABLE ;
 int BS_WRITABLE ;
 int DEBUGP (int,struct reader_dev*,char*) ;
 scalar_t__ POLL_PERIOD ;
 scalar_t__ REG_OFFSET_BUFFER_STATUS ;
 int clear_bit (int ,scalar_t__*) ;
 struct reader_dev* dev ;
 struct reader_dev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int poll_timer ;
 int set_bit (int ,scalar_t__*) ;
 int wake_up_interruptible (int *) ;
 unsigned int xinb (scalar_t__) ;

__attribute__((used)) static void cm4040_do_poll(struct timer_list *t)
{
 struct reader_dev *dev = from_timer(dev, t, poll_timer);
 unsigned int obs = xinb(dev->p_dev->resource[0]->start
    + REG_OFFSET_BUFFER_STATUS);

 if ((obs & BSR_BULK_IN_FULL)) {
  set_bit(BS_READABLE, &dev->buffer_status);
  DEBUGP(4, dev, "waking up read_wait\n");
  wake_up_interruptible(&dev->read_wait);
 } else
  clear_bit(BS_READABLE, &dev->buffer_status);

 if (!(obs & BSR_BULK_OUT_FULL)) {
  set_bit(BS_WRITABLE, &dev->buffer_status);
  DEBUGP(4, dev, "waking up write_wait\n");
  wake_up_interruptible(&dev->write_wait);
 } else
  clear_bit(BS_WRITABLE, &dev->buffer_status);

 if (dev->buffer_status)
  wake_up_interruptible(&dev->poll_wait);

 mod_timer(&dev->poll_timer, jiffies + POLL_PERIOD);
}
