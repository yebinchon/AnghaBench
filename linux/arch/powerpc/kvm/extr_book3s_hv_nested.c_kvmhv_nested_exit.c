
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_SET_PARTITION_TABLE ;
 int kfree (int *) ;
 scalar_t__ kvmhv_on_pseries () ;
 int plpar_hcall_norets (int ,int ) ;
 int * pseries_partition_tb ;

void kvmhv_nested_exit(void)
{





 if (kvmhv_on_pseries() && pseries_partition_tb) {
  plpar_hcall_norets(H_SET_PARTITION_TABLE, 0);
  kfree(pseries_partition_tb);
  pseries_partition_tb = ((void*)0);
 }
}
