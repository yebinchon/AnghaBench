
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int chunk_sectors; } ;
struct request_queue {TYPE_1__ limits; } ;


 int BUG_ON (int) ;
 int is_power_of_2 (unsigned int) ;

void blk_queue_chunk_sectors(struct request_queue *q, unsigned int chunk_sectors)
{
 BUG_ON(!is_power_of_2(chunk_sectors));
 q->limits.chunk_sectors = chunk_sectors;
}
