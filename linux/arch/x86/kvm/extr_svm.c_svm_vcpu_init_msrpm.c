
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ index; int always; } ;


 int MSRPM_ALLOC_ORDER ;
 scalar_t__ MSR_INVALID ;
 int PAGE_SIZE ;
 TYPE_1__* direct_access_msrs ;
 int memset (int *,int,int) ;
 int set_msr_interception (int *,scalar_t__,int,int) ;

__attribute__((used)) static void svm_vcpu_init_msrpm(u32 *msrpm)
{
 int i;

 memset(msrpm, 0xff, PAGE_SIZE * (1 << MSRPM_ALLOC_ORDER));

 for (i = 0; direct_access_msrs[i].index != MSR_INVALID; i++) {
  if (!direct_access_msrs[i].always)
   continue;

  set_msr_interception(msrpm, direct_access_msrs[i].index, 1, 1);
 }
}
