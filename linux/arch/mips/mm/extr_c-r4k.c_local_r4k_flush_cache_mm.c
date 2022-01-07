
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 scalar_t__ CPU_R4000MC ;
 scalar_t__ CPU_R4000SC ;
 scalar_t__ CPU_R4400MC ;
 scalar_t__ CPU_R4400SC ;
 int R4K_INDEX ;
 scalar_t__ current_cpu_type () ;
 int has_valid_asid (struct mm_struct*,int ) ;
 int r4k_blast_dcache () ;
 int r4k_blast_scache () ;

__attribute__((used)) static inline void local_r4k_flush_cache_mm(void * args)
{
 struct mm_struct *mm = args;

 if (!has_valid_asid(mm, R4K_INDEX))
  return;







 if (current_cpu_type() == CPU_R4000SC ||
     current_cpu_type() == CPU_R4000MC ||
     current_cpu_type() == CPU_R4400SC ||
     current_cpu_type() == CPU_R4400MC) {
  r4k_blast_scache();
  return;
 }

 r4k_blast_dcache();
}
