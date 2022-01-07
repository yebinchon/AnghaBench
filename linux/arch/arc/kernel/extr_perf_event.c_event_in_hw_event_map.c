
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * arc_pmu_ev_hw_map ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (int ) ;

__attribute__((used)) static inline bool event_in_hw_event_map(int i, char *name)
{
 if (!arc_pmu_ev_hw_map[i])
  return 0;

 if (!strlen(arc_pmu_ev_hw_map[i]))
  return 0;

 if (strcmp(arc_pmu_ev_hw_map[i], name))
  return 0;

 return 1;
}
