
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_perf_event {scalar_t__ cntr_mask; } ;
struct TYPE_2__ {struct mips_perf_event const** general_event_map; } ;


 int EOPNOTSUPP ;
 struct mips_perf_event const* ERR_PTR (int ) ;
 TYPE_1__ mipspmu ;

__attribute__((used)) static const struct mips_perf_event *mipspmu_map_general_event(int idx)
{

 if ((*mipspmu.general_event_map)[idx].cntr_mask == 0)
  return ERR_PTR(-EOPNOTSUPP);
 return &(*mipspmu.general_event_map)[idx];
}
