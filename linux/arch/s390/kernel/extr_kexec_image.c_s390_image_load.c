
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;


 void* kexec_file_add_components (struct kimage*,int ) ;
 int kexec_file_add_kernel_image ;

__attribute__((used)) static void *s390_image_load(struct kimage *image,
        char *kernel, unsigned long kernel_len,
        char *initrd, unsigned long initrd_len,
        char *cmdline, unsigned long cmdline_len)
{
 return kexec_file_add_components(image, kexec_file_add_kernel_image);
}
