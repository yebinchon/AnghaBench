
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;


 int kexec_image_info (struct kimage*) ;

int machine_kexec_prepare(struct kimage *image)
{
 kexec_image_info(image);
 return 0;
}
