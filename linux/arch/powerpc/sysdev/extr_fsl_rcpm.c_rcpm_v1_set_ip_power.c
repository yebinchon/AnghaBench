
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ippdexpcr; } ;


 int clrbits32 (int *,int ) ;
 TYPE_1__* rcpm_v1_regs ;
 int setbits32 (int *,int ) ;

__attribute__((used)) static void rcpm_v1_set_ip_power(bool enable, u32 mask)
{
 if (enable)
  setbits32(&rcpm_v1_regs->ippdexpcr, mask);
 else
  clrbits32(&rcpm_v1_regs->ippdexpcr, mask);
}
