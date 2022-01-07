
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_ranges {int target; int parent; } ;


 int range_set_release (int *) ;

__attribute__((used)) static void diff_ranges_release(struct diff_ranges *diff)
{
 range_set_release(&diff->parent);
 range_set_release(&diff->target);
}
