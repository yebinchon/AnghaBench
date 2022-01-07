
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int DCACHE_N_COLORS ;
 int KM_TYPE_NR ;
 int smp_processor_id () ;

__attribute__((used)) static inline enum fixed_addresses kmap_idx(int type, unsigned long color)
{
 return (type + KM_TYPE_NR * smp_processor_id()) * DCACHE_N_COLORS +
  color;
}
