
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* reg; } ;


 TYPE_1__* ds1603 ;

__attribute__((used)) static unsigned long rtc_reg_read(void)
{
 unsigned long tmp = *ds1603->reg;
 return tmp;
}
