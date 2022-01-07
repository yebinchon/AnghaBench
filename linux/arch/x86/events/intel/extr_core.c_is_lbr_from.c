
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long lbr_from; unsigned long lbr_nr; } ;


 TYPE_1__ x86_pmu ;

__attribute__((used)) static bool is_lbr_from(unsigned long msr)
{
 unsigned long lbr_from_nr = x86_pmu.lbr_from + x86_pmu.lbr_nr;

 return x86_pmu.lbr_from <= msr && msr < lbr_from_nr;
}
