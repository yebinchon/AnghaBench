
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ type; } ;


 int EOPNOTSUPP ;
 scalar_t__ KEXEC_TYPE_CRASH ;
 int kexec_image_probe_default (struct kimage*,void*,unsigned long) ;

int arch_kexec_kernel_image_probe(struct kimage *image, void *buf,
      unsigned long buf_len)
{

 if (image->type == KEXEC_TYPE_CRASH)
  return -EOPNOTSUPP;

 return kexec_image_probe_default(image, buf, buf_len);
}
