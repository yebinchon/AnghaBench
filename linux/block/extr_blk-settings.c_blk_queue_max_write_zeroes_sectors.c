
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int max_write_zeroes_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;



void blk_queue_max_write_zeroes_sectors(struct request_queue *q,
  unsigned int max_write_zeroes_sectors)
{
 q->limits.max_write_zeroes_sectors = max_write_zeroes_sectors;
}
