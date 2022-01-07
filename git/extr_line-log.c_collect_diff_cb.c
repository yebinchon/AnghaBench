
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct collect_diff_cbdata {TYPE_1__* diff; } ;
struct TYPE_2__ {int target; int parent; } ;


 int range_set_append (int *,long,long) ;

__attribute__((used)) static int collect_diff_cb(long start_a, long count_a,
      long start_b, long count_b,
      void *data)
{
 struct collect_diff_cbdata *d = data;

 if (count_a >= 0)
  range_set_append(&d->diff->parent, start_a, start_a + count_a);
 if (count_b >= 0)
  range_set_append(&d->diff->target, start_b, start_b + count_b);

 return 0;
}
