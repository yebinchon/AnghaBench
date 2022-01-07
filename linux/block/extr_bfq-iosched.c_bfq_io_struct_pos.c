
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 int blk_rq_pos (void*) ;

__attribute__((used)) static sector_t bfq_io_struct_pos(void *io_struct, bool request)
{
 if (request)
  return blk_rq_pos(io_struct);
 else
  return ((struct bio *)io_struct)->bi_iter.bi_sector;
}
