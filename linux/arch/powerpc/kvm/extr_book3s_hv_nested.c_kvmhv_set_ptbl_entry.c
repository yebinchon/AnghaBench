
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {void* patb1; void* patb0; } ;


 void* cpu_to_be64 (int ) ;
 int kvmhv_flush_lpid (unsigned int) ;
 int kvmhv_on_pseries () ;
 int mmu_partition_table_set_entry (unsigned int,int ,int ,int) ;
 TYPE_1__* pseries_partition_tb ;

void kvmhv_set_ptbl_entry(unsigned int lpid, u64 dw0, u64 dw1)
{
 if (!kvmhv_on_pseries()) {
  mmu_partition_table_set_entry(lpid, dw0, dw1, 1);
  return;
 }

 pseries_partition_tb[lpid].patb0 = cpu_to_be64(dw0);
 pseries_partition_tb[lpid].patb1 = cpu_to_be64(dw1);

 kvmhv_flush_lpid(lpid);
}
