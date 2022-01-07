
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long default_lma; int (* entry ) () ;int image_size; int dynsym_start; int rela_dyn_end; int rela_dyn_start; int bootdata_preserved_off; int bootdata_off; } ;


 int CONFIG_KERNEL_UNCOMPRESSED ;
 int CONFIG_RANDOMIZE_BASE ;
 int CONFIG_RELOCATABLE ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long __kaslr_offset ;
 int clear_bss_section () ;
 int copy_bootdata () ;
 void* decompress_kernel () ;
 int detect_memory () ;
 unsigned long get_random_base (unsigned long) ;
 int handle_relocs (unsigned long) ;
 scalar_t__ kaslr_enabled ;
 unsigned long mem_safe_offset () ;
 int memcpy (void*,void*,int ) ;
 int memmove (void*,void*,int ) ;
 int memset (void*,int ,int ) ;
 int parse_boot_command_line () ;
 unsigned long read_ipl_report (unsigned long) ;
 int rescue_initrd (unsigned long) ;
 int sclp_early_read_info () ;
 int setup_boot_command_line () ;
 int setup_memory_end () ;
 int store_ipl_parmblock () ;
 int stub1 () ;
 int uv_query_info () ;
 TYPE_1__ vmlinux ;

void startup_kernel(void)
{
 unsigned long random_lma;
 unsigned long safe_addr;
 void *img;

 store_ipl_parmblock();
 safe_addr = mem_safe_offset();
 safe_addr = read_ipl_report(safe_addr);
 uv_query_info();
 rescue_initrd(safe_addr);
 sclp_early_read_info();
 setup_boot_command_line();
 parse_boot_command_line();
 setup_memory_end();
 detect_memory();

 random_lma = __kaslr_offset = 0;
 if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_enabled) {
  random_lma = get_random_base(safe_addr);
  if (random_lma) {
   __kaslr_offset = random_lma - vmlinux.default_lma;
   img = (void *)vmlinux.default_lma;
   vmlinux.default_lma += __kaslr_offset;
   vmlinux.entry += __kaslr_offset;
   vmlinux.bootdata_off += __kaslr_offset;
   vmlinux.bootdata_preserved_off += __kaslr_offset;
   vmlinux.rela_dyn_start += __kaslr_offset;
   vmlinux.rela_dyn_end += __kaslr_offset;
   vmlinux.dynsym_start += __kaslr_offset;
  }
 }

 if (!IS_ENABLED(CONFIG_KERNEL_UNCOMPRESSED)) {
  img = decompress_kernel();
  memmove((void *)vmlinux.default_lma, img, vmlinux.image_size);
 } else if (__kaslr_offset)
  memcpy((void *)vmlinux.default_lma, img, vmlinux.image_size);

 clear_bss_section();
 copy_bootdata();
 if (IS_ENABLED(CONFIG_RELOCATABLE))
  handle_relocs(__kaslr_offset);

 if (__kaslr_offset) {

  if (IS_ENABLED(CONFIG_KERNEL_UNCOMPRESSED))
   memset(img, 0, vmlinux.image_size);
 }
 vmlinux.entry();
}
