
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ALIGN (unsigned long,int ) ;
 int CONFIG_PHYSICAL_ALIGN ;
 int debug_putstr (char*) ;
 scalar_t__ memmap_too_large ;
 int process_e820_entries (unsigned long,unsigned long) ;
 scalar_t__ process_efi_entries (unsigned long,unsigned long) ;
 unsigned long slots_fetch_random () ;

__attribute__((used)) static unsigned long find_random_phys_addr(unsigned long minimum,
        unsigned long image_size)
{

 if (memmap_too_large) {
  debug_putstr("Aborted memory entries scan (more than 4 memmap= args)!\n");
  return 0;
 }


 minimum = ALIGN(minimum, CONFIG_PHYSICAL_ALIGN);

 if (process_efi_entries(minimum, image_size))
  return slots_fetch_random();

 process_e820_entries(minimum, image_size);
 return slots_fetch_random();
}
