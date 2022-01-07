
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mips_perf_event {scalar_t__ cntr_mask; } ;
struct TYPE_2__ {struct mips_perf_event**** cache_event_map; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct mips_perf_event const* ERR_PTR (int ) ;
 unsigned int PERF_COUNT_HW_CACHE_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_OP_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_RESULT_MAX ;
 TYPE_1__ mipspmu ;

__attribute__((used)) static const struct mips_perf_event *mipspmu_map_cache_event(u64 config)
{
 unsigned int cache_type, cache_op, cache_result;
 const struct mips_perf_event *pev;

 cache_type = (config >> 0) & 0xff;
 if (cache_type >= PERF_COUNT_HW_CACHE_MAX)
  return ERR_PTR(-EINVAL);

 cache_op = (config >> 8) & 0xff;
 if (cache_op >= PERF_COUNT_HW_CACHE_OP_MAX)
  return ERR_PTR(-EINVAL);

 cache_result = (config >> 16) & 0xff;
 if (cache_result >= PERF_COUNT_HW_CACHE_RESULT_MAX)
  return ERR_PTR(-EINVAL);

 pev = &((*mipspmu.cache_event_map)
     [cache_type]
     [cache_op]
     [cache_result]);

 if (pev->cntr_mask == 0)
  return ERR_PTR(-EOPNOTSUPP);

 return pev;

}
