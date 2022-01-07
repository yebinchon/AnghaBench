
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long address; scalar_t__ size; } ;
struct saved_context {int misc_enable_saved; int misc_enable; int cr4; int cr3; int cr2; int cr0; int efer; int usermode_gs_base; int kernelmode_gs_base; int fs_base; int es; int ds; int fs; int gs; int tr; TYPE_1__ gdt_desc; int idt; } ;


 scalar_t__ GDT_SIZE ;
 int MSR_EFER ;
 int MSR_FS_BASE ;
 int MSR_GS_BASE ;
 int MSR_IA32_MISC_ENABLE ;
 int MSR_KERNEL_GS_BASE ;
 int __read_cr3 () ;
 int __read_cr4 () ;
 int ds ;
 int es ;
 int fs ;
 scalar_t__ get_cpu_gdt_rw (int ) ;
 int gs ;
 int kernel_fpu_begin () ;
 int msr_save_context (struct saved_context*) ;
 int mtrr_save_fixed_ranges (int *) ;
 int rdmsrl (int ,int ) ;
 int rdmsrl_safe (int ,int *) ;
 int read_cr0 () ;
 int read_cr2 () ;
 int savesegment (int ,int ) ;
 int smp_processor_id () ;
 int store_idt (int *) ;
 int store_tr (int ) ;

__attribute__((used)) static void __save_processor_state(struct saved_context *ctxt)
{



 kernel_fpu_begin();




 store_idt(&ctxt->idt);







 ctxt->gdt_desc.size = GDT_SIZE - 1;
 ctxt->gdt_desc.address = (unsigned long)get_cpu_gdt_rw(smp_processor_id());

 store_tr(ctxt->tr);
 ctxt->cr0 = read_cr0();
 ctxt->cr2 = read_cr2();
 ctxt->cr3 = __read_cr3();
 ctxt->cr4 = __read_cr4();
 ctxt->misc_enable_saved = !rdmsrl_safe(MSR_IA32_MISC_ENABLE,
            &ctxt->misc_enable);
 msr_save_context(ctxt);
}
