
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int R4K_INDEX ;
 int cpu_has_dc_aliases ;
 int local_r4k_flush_cache_mm ;
 int r4k_on_each_cpu (int ,int ,struct mm_struct*) ;

__attribute__((used)) static void r4k_flush_cache_mm(struct mm_struct *mm)
{
 if (!cpu_has_dc_aliases)
  return;

 r4k_on_each_cpu(R4K_INDEX, local_r4k_flush_cache_mm, mm);
}
