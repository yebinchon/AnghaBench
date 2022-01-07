
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int event_mask; } ;


 int event_encoding (int ,int) ;
 TYPE_1__* sparc_pmu ;

__attribute__((used)) static u64 mask_for_index(int idx)
{
 return event_encoding(sparc_pmu->event_mask, idx);
}
