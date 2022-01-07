
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dtb; } ;
struct kimage {TYPE_1__ arch; } ;


 int kexec_image_post_load_cleanup_default (struct kimage*) ;
 int vfree (int *) ;

int arch_kimage_file_post_load_cleanup(struct kimage *image)
{
 vfree(image->arch.dtb);
 image->arch.dtb = ((void*)0);

 return kexec_image_post_load_cleanup_default(image);
}
