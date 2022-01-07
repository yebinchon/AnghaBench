
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int dummy; } ;


 int EINVAL ;
 int _machine_kexec_prepare (struct kimage*) ;
 int kexec_image_info (struct kimage*) ;
 int kexec_nonboot_cpu_func () ;

int
machine_kexec_prepare(struct kimage *kimage)
{





 kexec_image_info(kimage);

 if (_machine_kexec_prepare)
  return _machine_kexec_prepare(kimage);

 return 0;
}
