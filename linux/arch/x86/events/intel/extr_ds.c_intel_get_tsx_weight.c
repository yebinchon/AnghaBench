
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union hsw_tsx_tuning {scalar_t__ cycles_last_block; scalar_t__ value; } ;
typedef scalar_t__ u64 ;



__attribute__((used)) static inline u64 intel_get_tsx_weight(u64 tsx_tuning)
{
 if (tsx_tuning) {
  union hsw_tsx_tuning tsx = { .value = tsx_tuning };
  return tsx.cycles_last_block;
 }
 return 0;
}
