
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct range_set {unsigned int nr; TYPE_1__* ranges; } ;
struct TYPE_2__ {long start; long end; } ;


 int range_set_append (struct range_set*,long,long) ;

__attribute__((used)) static void range_set_difference(struct range_set *out,
      struct range_set *a, struct range_set *b)
{
 unsigned int i, j = 0;
 for (i = 0; i < a->nr; i++) {
  long start = a->ranges[i].start;
  long end = a->ranges[i].end;
  while (start < end) {
   while (j < b->nr && start >= b->ranges[j].end)




    j++;
   if (j >= b->nr || end < b->ranges[j].start) {





    range_set_append(out, start, end);
    break;
   }
   if (start >= b->ranges[j].start) {




    start = b->ranges[j].end;
   } else if (end > b->ranges[j].start) {




    if (start < b->ranges[j].start)
     range_set_append(out, start, b->ranges[j].start);
    start = b->ranges[j].end;
   }
  }
 }
}
