
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reader_dev {TYPE_2__* p_dev; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {int start; } ;


 scalar_t__ REG_OFFSET_SYNC_CONTROL ;
 int wait_for_bulk_out_ready (struct reader_dev*) ;
 int xoutb (unsigned char,scalar_t__) ;

__attribute__((used)) static int write_sync_reg(unsigned char val, struct reader_dev *dev)
{
 int iobase = dev->p_dev->resource[0]->start;
 int rc;

 rc = wait_for_bulk_out_ready(dev);
 if (rc <= 0)
  return rc;

 xoutb(val, iobase + REG_OFFSET_SYNC_CONTROL);
 rc = wait_for_bulk_out_ready(dev);
 if (rc <= 0)
  return rc;

 return 1;
}
