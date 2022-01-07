
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long tlno; long plno; int parent; int target; int blame; } ;
typedef TYPE_1__ blame_chunk_cb_data ;


 scalar_t__ blame_chunk (int ,long,long,long,int ,int ) ;

__attribute__((used)) static int my_emit(
 long start_a, long count_a,
 long start_b, long count_b,
 void *cb_data)
{
 blame_chunk_cb_data *d = (blame_chunk_cb_data *)cb_data;

 if (blame_chunk(d->blame, d->tlno, d->plno, start_b, d->target, d->parent) < 0)
  return -1;
 d->plno = start_a + count_a;
 d->tlno = start_b + count_b;

 return 0;
}
