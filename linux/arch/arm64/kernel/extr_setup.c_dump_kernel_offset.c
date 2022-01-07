
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int CONFIG_RANDOMIZE_BASE ;
 scalar_t__ IS_ENABLED (int ) ;
 int KIMAGE_VADDR ;
 int PHYS_OFFSET ;
 unsigned long kaslr_offset () ;
 int pr_emerg (char*,...) ;

__attribute__((used)) static int dump_kernel_offset(struct notifier_block *self, unsigned long v,
         void *p)
{
 const unsigned long offset = kaslr_offset();

 if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && offset > 0) {
  pr_emerg("Kernel Offset: 0x%lx from 0x%lx\n",
    offset, KIMAGE_VADDR);
  pr_emerg("PHYS_OFFSET: 0x%llx\n", PHYS_OFFSET);
 } else {
  pr_emerg("Kernel Offset: disabled\n");
 }
 return 0;
}
