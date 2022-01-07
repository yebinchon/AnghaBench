
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int range_shift; } ;


 TYPE_1__* fixed_seg_table ;

__attribute__((used)) static u64 fixed_mtrr_seg_unit_size(int seg)
{
 return 8 << fixed_seg_table[seg].range_shift;
}
