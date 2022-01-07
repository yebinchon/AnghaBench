
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_set {int * ranges; scalar_t__ nr; scalar_t__ alloc; } ;


 int range_set_grow (struct range_set*,size_t) ;

void range_set_init(struct range_set *rs, size_t prealloc)
{
 rs->alloc = rs->nr = 0;
 rs->ranges = ((void*)0);
 if (prealloc)
  range_set_grow(rs, prealloc);
}
