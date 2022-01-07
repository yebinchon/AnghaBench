
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reader_dev {int timeout; int buffer_status; int read_wait; TYPE_1__* p_dev; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {TYPE_2__** resource; } ;


 int BSR_BULK_IN_FULL ;
 int BS_READABLE ;
 int DEBUGP (int,struct reader_dev*,char*,...) ;
 int POLL_LOOP_COUNT ;
 scalar_t__ REG_OFFSET_BUFFER_STATUS ;
 int test_and_clear_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;
 int xinb (scalar_t__) ;

__attribute__((used)) static int wait_for_bulk_in_ready(struct reader_dev *dev)
{
 int i, rc;
 int iobase = dev->p_dev->resource[0]->start;

 for (i = 0; i < POLL_LOOP_COUNT; i++) {
  if ((xinb(iobase + REG_OFFSET_BUFFER_STATUS)
      & BSR_BULK_IN_FULL) == BSR_BULK_IN_FULL) {
   DEBUGP(3, dev, "BulkIn full (i=%d)\n", i);
   return 1;
  }
 }

 DEBUGP(4, dev, "wait_event_interruptible_timeout(timeout=%ld\n",
  dev->timeout);
 rc = wait_event_interruptible_timeout(dev->read_wait,
           test_and_clear_bit(BS_READABLE,
        &dev->buffer_status),
           dev->timeout);
 if (rc > 0)
  DEBUGP(4, dev, "woke up: BulkIn full\n");
 else if (rc == 0)
  DEBUGP(4, dev, "woke up: BulkIn not full, returning 0 :(\n");
 else if (rc < 0)
  DEBUGP(4, dev, "woke up: signal arrived\n");

 return rc;
}
