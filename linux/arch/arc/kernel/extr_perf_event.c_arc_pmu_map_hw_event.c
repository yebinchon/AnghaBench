
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* ev_hw_idx; } ;


 int ARRAY_SIZE (int ) ;
 TYPE_1__* arc_pmu ;
 int arc_pmu_ev_hw_map ;
 scalar_t__ event_in_hw_event_map (int,char*) ;
 int pr_debug (char*,int,char*,int) ;

__attribute__((used)) static void arc_pmu_map_hw_event(int j, char *str)
{
 int i;


 for (i = 0; i < ARRAY_SIZE(arc_pmu_ev_hw_map); i++) {
  if (event_in_hw_event_map(i, str)) {
   pr_debug("mapping perf event %2d to h/w event \'%8s\' (idx %d)\n",
     i, str, j);
   arc_pmu->ev_hw_idx[i] = j;
  }
 }
}
