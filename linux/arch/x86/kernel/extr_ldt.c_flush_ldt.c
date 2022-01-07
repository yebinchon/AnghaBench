
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {int loaded_mm; } ;


 TYPE_1__ cpu_tlbstate ;
 int load_mm_ldt (struct mm_struct*) ;
 int refresh_ldt_segments () ;
 struct mm_struct* this_cpu_read (int ) ;

__attribute__((used)) static void flush_ldt(void *__mm)
{
 struct mm_struct *mm = __mm;

 if (this_cpu_read(cpu_tlbstate.loaded_mm) != mm)
  return;

 load_mm_ldt(mm);

 refresh_ldt_segments();
}
