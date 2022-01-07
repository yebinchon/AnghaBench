
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_PERFCTR_CORE ;
 int boot_cpu_has (int ) ;
 int* count_offsets ;
 int* event_offsets ;

__attribute__((used)) static inline int amd_pmu_addr_offset(int index, bool eventsel)
{
 int offset;

 if (!index)
  return index;

 if (eventsel)
  offset = event_offsets[index];
 else
  offset = count_offsets[index];

 if (offset)
  return offset;

 if (!boot_cpu_has(X86_FEATURE_PERFCTR_CORE))
  offset = index;
 else
  offset = index << 1;

 if (eventsel)
  event_offsets[index] = offset;
 else
  count_offsets[index] = offset;

 return offset;
}
