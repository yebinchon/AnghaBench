
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ALIGN (unsigned long,unsigned long) ;
 unsigned long CONFIG_PHYSICAL_ALIGN ;
 unsigned long KERNEL_IMAGE_SIZE ;
 unsigned long kaslr_get_random_long (char*) ;

__attribute__((used)) static unsigned long find_random_virt_addr(unsigned long minimum,
        unsigned long image_size)
{
 unsigned long slots, random_addr;


 minimum = ALIGN(minimum, CONFIG_PHYSICAL_ALIGN);

 image_size = ALIGN(image_size, CONFIG_PHYSICAL_ALIGN);






 slots = (KERNEL_IMAGE_SIZE - minimum - image_size) /
   CONFIG_PHYSICAL_ALIGN + 1;

 random_addr = kaslr_get_random_long("Virtual") % slots;

 return random_addr * CONFIG_PHYSICAL_ALIGN + minimum;
}
