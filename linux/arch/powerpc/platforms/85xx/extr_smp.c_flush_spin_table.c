
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct epapr_spin_table {int dummy; } ;


 int flush_dcache_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void flush_spin_table(void *spin_table)
{
 flush_dcache_range((ulong)spin_table,
  (ulong)spin_table + sizeof(struct epapr_spin_table));
}
