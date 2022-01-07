
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ type; int control_code_page; } ;


 int EINVAL ;
 scalar_t__ KEXEC_TYPE_CRASH ;
 scalar_t__ KEXEC_TYPE_DEFAULT ;
 int machine_kexec_prepare_kdump () ;
 int memcpy (void*,int ,int ) ;
 scalar_t__ page_to_phys (int ) ;
 int relocate_kernel ;
 int relocate_kernel_len ;

int machine_kexec_prepare(struct kimage *image)
{
 void *reboot_code_buffer;

 if (image->type == KEXEC_TYPE_CRASH)
  return machine_kexec_prepare_kdump();


 if (image->type != KEXEC_TYPE_DEFAULT)
  return -EINVAL;


 reboot_code_buffer = (void *) page_to_phys(image->control_code_page);


 memcpy(reboot_code_buffer, relocate_kernel, relocate_kernel_len);
 return 0;
}
