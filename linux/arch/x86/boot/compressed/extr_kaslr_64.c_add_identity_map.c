
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int PMD_SIZE ;
 int kernel_ident_mapping_init (int *,int *,unsigned long,unsigned long) ;
 int mapping_info ;
 unsigned long round_down (unsigned long,int ) ;
 unsigned long round_up (unsigned long,int ) ;
 scalar_t__ top_level_pgt ;

void add_identity_map(unsigned long start, unsigned long size)
{
 unsigned long end = start + size;


 start = round_down(start, PMD_SIZE);
 end = round_up(end, PMD_SIZE);
 if (start >= end)
  return;


 kernel_ident_mapping_init(&mapping_info, (pgd_t *)top_level_pgt,
      start, end);
}
