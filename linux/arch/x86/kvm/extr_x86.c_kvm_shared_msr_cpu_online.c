
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nr; int * msrs; } ;


 int shared_msr_update (unsigned int,int ) ;
 TYPE_1__ shared_msrs_global ;

__attribute__((used)) static void kvm_shared_msr_cpu_online(void)
{
 unsigned i;

 for (i = 0; i < shared_msrs_global.nr; ++i)
  shared_msr_update(i, shared_msrs_global.msrs[i]);
}
