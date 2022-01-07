
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct paca_struct {int dummy; } ;
struct kimage {scalar_t__ type; int control_code_page; int start; scalar_t__ preserve_context; } ;
struct TYPE_7__ {int preempt_count; scalar_t__ flags; } ;
struct TYPE_6__ {int data_offset; size_t paca_index; int * lppaca_ptr; } ;


 int FW_FEATURE_LPAR ;
 int FW_FEATURE_PS3_LV1 ;
 int HARDIRQ_OFFSET ;
 scalar_t__ KEXEC_TYPE_CRASH ;
 TYPE_5__* current_thread_info () ;
 scalar_t__ firmware_has_feature (int ) ;
 int get_paca () ;
 scalar_t__ is_secure_guest () ;
 int kdump_in_progress () ;
 TYPE_1__ kexec_paca ;
 int kexec_prepare_cpus () ;
 int kexec_sequence (int *,int ,struct kimage*,int ,int ,int) ;
 int kexec_stack ;
 int memcpy (TYPE_1__*,int ,int) ;
 int mmu_cleanup_all ;
 TYPE_1__** paca_ptrs ;
 int page_address (int ) ;
 int printk (char*) ;
 scalar_t__ radix_enabled () ;
 int setup_paca (TYPE_1__*) ;
 int uv_unshare_all_pages () ;

void default_machine_kexec(struct kimage *image)
{
 bool copy_with_mmu_off;
 if (!kdump_in_progress())
  kexec_prepare_cpus();

 printk("kexec: Starting switchover sequence.\n");





 current_thread_info()->flags = 0;
 current_thread_info()->preempt_count = HARDIRQ_OFFSET;





 memcpy(&kexec_paca, get_paca(), sizeof(struct paca_struct));
 kexec_paca.data_offset = 0xedeaddeadeeeeeeeUL;




 if (is_secure_guest() && !(image->preserve_context ||
       image->type == KEXEC_TYPE_CRASH)) {
  uv_unshare_all_pages();
  printk("kexec: Unshared all shared pages.\n");
 }

 paca_ptrs[kexec_paca.paca_index] = &kexec_paca;

 setup_paca(&kexec_paca);
 copy_with_mmu_off = radix_enabled() ||
  !(firmware_has_feature(FW_FEATURE_LPAR) ||
    firmware_has_feature(FW_FEATURE_PS3_LV1));





 kexec_sequence(&kexec_stack, image->start, image,
         page_address(image->control_code_page),
         mmu_cleanup_all, copy_with_mmu_off);

}
