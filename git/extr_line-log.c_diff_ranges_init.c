
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_ranges {int target; int parent; } ;


 int range_set_init (int *,int ) ;

__attribute__((used)) static void diff_ranges_init(struct diff_ranges *diff)
{
 range_set_init(&diff->parent, 0);
 range_set_init(&diff->target, 0);
}
