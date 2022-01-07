
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control1; int control2; scalar_t__ ctr2_enable; scalar_t__ ctr1_enable; } ;


 int LOONGSON3_PERFCTRL_M ;
 int LOONGSON3_PERFCTRL_W ;
 TYPE_1__ reg ;
 int write_c0_perflo1 (int) ;
 int write_c0_perflo2 (int) ;

__attribute__((used)) static void loongson3_cpu_start(void *args)
{

 reg.control1 |= (LOONGSON3_PERFCTRL_W|LOONGSON3_PERFCTRL_M);
 reg.control2 |= (LOONGSON3_PERFCTRL_W|LOONGSON3_PERFCTRL_M);

 if (reg.ctr1_enable)
  write_c0_perflo1(reg.control1);
 if (reg.ctr2_enable)
  write_c0_perflo2(reg.control2);
}
