
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ index; } ;


 scalar_t__ MSR_INVALID ;
 TYPE_1__* direct_access_msrs ;

__attribute__((used)) static bool valid_msr_intercept(u32 index)
{
 int i;

 for (i = 0; direct_access_msrs[i].index != MSR_INVALID; i++)
  if (direct_access_msrs[i].index == index)
   return 1;

 return 0;
}
