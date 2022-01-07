
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int control_code_page; } ;


 int flush_icache_range (unsigned long,scalar_t__) ;
 struct kimage* ia64_kimage ;
 int memcpy (void*,void const*,scalar_t__) ;
 void* page_address (int ) ;
 int relocate_new_kernel ;
 scalar_t__ relocate_new_kernel_size ;

int machine_kexec_prepare(struct kimage *image)
{
 void *control_code_buffer;
 const unsigned long *func;

 func = (unsigned long *)&relocate_new_kernel;

 control_code_buffer = page_address(image->control_code_page);
 memcpy((void *)control_code_buffer, (const void *)func[0],
   relocate_new_kernel_size);
 flush_icache_range((unsigned long)control_code_buffer,
   (unsigned long)control_code_buffer + relocate_new_kernel_size);
 ia64_kimage = image;

 return 0;
}
