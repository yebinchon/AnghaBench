
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* reg; } ;


 TYPE_1__* ds1603 ;

__attribute__((used)) static void rtc_reg_write(unsigned long val)
{
 *ds1603->reg = val;
}
