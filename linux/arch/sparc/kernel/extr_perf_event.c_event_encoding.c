
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int lower_shift; int upper_shift; } ;


 int PIC_UPPER_INDEX ;
 TYPE_1__* sparc_pmu ;

__attribute__((used)) static u64 event_encoding(u64 event_id, int idx)
{
 if (idx == PIC_UPPER_INDEX)
  event_id <<= sparc_pmu->upper_shift;
 else
  event_id <<= sparc_pmu->lower_shift;
 return event_id;
}
