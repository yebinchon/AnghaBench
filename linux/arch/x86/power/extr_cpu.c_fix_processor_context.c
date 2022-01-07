
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_2__ tss_desc ;
struct desc_struct {int dummy; } ;
struct TYPE_10__ {int active_mm; } ;
struct TYPE_7__ {int x86_tss; } ;
struct TYPE_9__ {TYPE_1__ tss; } ;


 int DESC_TSS ;
 size_t GDT_ENTRY_TSS ;
 int X86_FEATURE_SEP ;
 scalar_t__ boot_cpu_has (int ) ;
 TYPE_6__* current ;
 int enable_sep_cpu () ;
 int fpu__resume_cpu () ;
 TYPE_5__* get_cpu_entry_area (int) ;
 struct desc_struct* get_cpu_gdt_rw (int) ;
 int initialize_tlbstate_and_flush () ;
 int load_TR_desc () ;
 int load_fixmap_gdt (int) ;
 int load_mm_ldt (int ) ;
 int memcpy (TYPE_2__*,struct desc_struct*,int) ;
 int set_tss_desc (int,int *) ;
 int smp_processor_id () ;
 int syscall_init () ;
 int write_gdt_entry (struct desc_struct*,size_t,TYPE_2__*,int ) ;

__attribute__((used)) static void fix_processor_context(void)
{
 int cpu = smp_processor_id();
 set_tss_desc(cpu, &get_cpu_entry_area(cpu)->tss.x86_tss);
 if (boot_cpu_has(X86_FEATURE_SEP))
  enable_sep_cpu();

 load_TR_desc();
 load_mm_ldt(current->active_mm);
 initialize_tlbstate_and_flush();

 fpu__resume_cpu();


 load_fixmap_gdt(cpu);
}
