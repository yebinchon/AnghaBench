
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ve_spc_opp {scalar_t__ freq; } ;
struct TYPE_2__ {int* num_opps; struct ve_spc_opp** opps; } ;


 int EINVAL ;
 TYPE_1__* info ;

__attribute__((used)) static int ve_spc_find_performance_index(int cluster, u32 freq)
{
 int idx, max_opp = info->num_opps[cluster];
 struct ve_spc_opp *opps = info->opps[cluster];

 for (idx = 0; idx < max_opp; idx++, opps++)
  if (opps->freq == freq)
   break;
 return (idx == max_opp) ? -EINVAL : idx;
}
