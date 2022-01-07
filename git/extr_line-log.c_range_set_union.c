
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_set {scalar_t__ nr; struct range* ranges; } ;
struct range {scalar_t__ start; scalar_t__ end; } ;


 int assert (int) ;
 int range_set_grow (struct range_set*,int) ;

__attribute__((used)) static void range_set_union(struct range_set *out,
        struct range_set *a, struct range_set *b)
{
 unsigned int i = 0, j = 0;
 struct range *ra = a->ranges;
 struct range *rb = b->ranges;


 assert(out->nr == 0);
 while (i < a->nr || j < b->nr) {
  struct range *new_range;
  if (i < a->nr && j < b->nr) {
   if (ra[i].start < rb[j].start)
    new_range = &ra[i++];
   else if (ra[i].start > rb[j].start)
    new_range = &rb[j++];
   else if (ra[i].end < rb[j].end)
    new_range = &ra[i++];
   else
    new_range = &rb[j++];
  } else if (i < a->nr)
   new_range = &ra[i++];
  else
   new_range = &rb[j++];
  if (new_range->start == new_range->end)
   ;
  else if (!out->nr || out->ranges[out->nr-1].end < new_range->start) {
   range_set_grow(out, 1);
   out->ranges[out->nr].start = new_range->start;
   out->ranges[out->nr].end = new_range->end;
   out->nr++;
  } else if (out->ranges[out->nr-1].end < new_range->end) {
   out->ranges[out->nr-1].end = new_range->end;
  }
 }
}
