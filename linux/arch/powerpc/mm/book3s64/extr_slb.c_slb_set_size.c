
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mmu_slb_size ;

void slb_set_size(u16 size)
{
 mmu_slb_size = size;
}
