
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctbenr; } ;


 int rcpm_common_freeze_time_base (int *,int) ;
 TYPE_1__* rcpm_v1_regs ;

__attribute__((used)) static void rcpm_v1_freeze_time_base(bool freeze)
{
 rcpm_common_freeze_time_base(&rcpm_v1_regs->ctbenr, freeze);
}
