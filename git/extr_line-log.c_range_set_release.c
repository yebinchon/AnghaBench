
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_set {scalar_t__ nr; scalar_t__ alloc; int ranges; } ;


 int FREE_AND_NULL (int ) ;

void range_set_release(struct range_set *rs)
{
 FREE_AND_NULL(rs->ranges);
 rs->alloc = rs->nr = 0;
}
