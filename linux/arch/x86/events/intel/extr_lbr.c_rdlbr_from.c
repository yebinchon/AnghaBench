
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ lbr_from; } ;


 int lbr_from_signext_quirk_rd (int ) ;
 int rdmsrl (scalar_t__,int ) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline u64 rdlbr_from(unsigned int idx)
{
 u64 val;

 rdmsrl(x86_pmu.lbr_from + idx, val);

 return lbr_from_signext_quirk_rd(val);
}
