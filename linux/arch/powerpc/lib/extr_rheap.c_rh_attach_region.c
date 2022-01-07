
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int alignment; } ;
typedef TYPE_1__ rh_info_t ;
struct TYPE_10__ {unsigned long start; int size; int * owner; } ;
typedef TYPE_2__ rh_block_t ;


 int ERANGE ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 int assure_empty (TYPE_1__*,int) ;
 int attach_free_block (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* get_slot (TYPE_1__*) ;

int rh_attach_region(rh_info_t * info, unsigned long start, int size)
{
 rh_block_t *blk;
 unsigned long s, e, m;
 int r;


 s = start;
 e = s + size;
 m = info->alignment - 1;


 s = (s + m) & ~m;


 e = e & ~m;

 if (IS_ERR_VALUE(e) || (e < s))
  return -ERANGE;


 start = s;
 size = e - s;


 r = assure_empty(info, 1);
 if (r < 0)
  return r;

 blk = get_slot(info);
 blk->start = start;
 blk->size = size;
 blk->owner = ((void*)0);

 attach_free_block(info, blk);

 return 0;
}
