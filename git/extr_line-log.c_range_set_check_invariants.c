
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct range_set {int nr; TYPE_1__* ranges; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int assert (int) ;

__attribute__((used)) static void range_set_check_invariants(struct range_set *rs)
{
 unsigned int i;

 if (!rs)
  return;

 if (rs->nr)
  assert(rs->ranges[0].start < rs->ranges[0].end);

 for (i = 1; i < rs->nr; i++) {
  assert(rs->ranges[i-1].end < rs->ranges[i].start);
  assert(rs->ranges[i].start < rs->ranges[i].end);
 }
}
