
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loadflags; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 int CONFIG_X86_64 ;
 scalar_t__ IS_ENABLED (int ) ;
 int KASLR_FLAG ;
 int LOAD_PHYSICAL_ADDR ;
 int X86_CR4_LA57 ;
 int __pgtable_l5_enabled ;
 int __read_cr4 () ;
 int add_identity_map (unsigned long,unsigned long) ;
 TYPE_2__* boot_params ;
 scalar_t__ cmdline_find_option_bool (char*) ;
 int finalize_identity_maps () ;
 unsigned long find_random_phys_addr (unsigned long,unsigned long) ;
 unsigned long find_random_virt_addr (int ,unsigned long) ;
 int initialize_identity_maps () ;
 int mem_avoid_init (unsigned long,unsigned long,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 int pgdir_shift ;
 int ptrs_per_p4d ;
 int warn (char*) ;

void choose_random_location(unsigned long input,
       unsigned long input_size,
       unsigned long *output,
       unsigned long output_size,
       unsigned long *virt_addr)
{
 unsigned long random_addr, min_addr;

 if (cmdline_find_option_bool("nokaslr")) {
  warn("KASLR disabled: 'nokaslr' on cmdline.");
  return;
 }
 boot_params->hdr.loadflags |= KASLR_FLAG;


 initialize_identity_maps();


 mem_avoid_init(input, input_size, *output);






 min_addr = min(*output, 512UL << 20);


 random_addr = find_random_phys_addr(min_addr, output_size);
 if (!random_addr) {
  warn("Physical KASLR disabled: no suitable memory region!");
 } else {

  if (*output != random_addr) {
   add_identity_map(random_addr, output_size);
   *output = random_addr;
  }
  finalize_identity_maps();
 }



 if (IS_ENABLED(CONFIG_X86_64))
  random_addr = find_random_virt_addr(LOAD_PHYSICAL_ADDR, output_size);
 *virt_addr = random_addr;
}
