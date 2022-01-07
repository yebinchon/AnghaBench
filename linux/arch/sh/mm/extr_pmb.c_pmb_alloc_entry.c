
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int NR_PMB_ENTRIES ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int) ;
 int pmb_map ;

__attribute__((used)) static int pmb_alloc_entry(void)
{
 int pos;

 pos = find_first_zero_bit(pmb_map, NR_PMB_ENTRIES);
 if (pos >= 0 && pos < NR_PMB_ENTRIES)
  __set_bit(pos, pmb_map);
 else
  pos = -ENOSPC;

 return pos;
}
