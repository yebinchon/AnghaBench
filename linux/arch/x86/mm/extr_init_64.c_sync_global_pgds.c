
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pgtable_l5_enabled () ;
 int sync_global_pgds_l4 (unsigned long,unsigned long) ;
 int sync_global_pgds_l5 (unsigned long,unsigned long) ;

void sync_global_pgds(unsigned long start, unsigned long end)
{
 if (pgtable_l5_enabled())
  sync_global_pgds_l5(start, end);
 else
  sync_global_pgds_l4(start, end);
}
