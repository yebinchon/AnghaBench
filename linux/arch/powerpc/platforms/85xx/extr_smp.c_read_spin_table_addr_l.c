
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef int u32 ;
struct epapr_spin_table {int addr_l; } ;


 int flush_dcache_range (scalar_t__,scalar_t__) ;
 int in_be32 (int *) ;

__attribute__((used)) static inline u32 read_spin_table_addr_l(void *spin_table)
{
 flush_dcache_range((ulong)spin_table,
  (ulong)spin_table + sizeof(struct epapr_spin_table));
 return in_be32(&((struct epapr_spin_table *)spin_table)->addr_l);
}
