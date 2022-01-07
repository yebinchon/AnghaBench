
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int lower_nop; int upper_nop; } ;


 int PIC_UPPER_INDEX ;
 int event_encoding (int ,int) ;
 TYPE_1__* sparc_pmu ;

__attribute__((used)) static u64 nop_for_index(int idx)
{
 return event_encoding(idx == PIC_UPPER_INDEX ?
         sparc_pmu->upper_nop :
         sparc_pmu->lower_nop, idx);
}
