
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ type; } ;


 int EBUSY ;
 scalar_t__ KEXEC_TYPE_CRASH ;
 scalar_t__ cpus_are_stuck_in_kernel () ;
 int kexec_image_info (struct kimage*) ;
 int pr_err (char*) ;

int machine_kexec_prepare(struct kimage *kimage)
{
 kexec_image_info(kimage);

 if (kimage->type != KEXEC_TYPE_CRASH && cpus_are_stuck_in_kernel()) {
  pr_err("Can't kexec: CPUs are stuck in the kernel.\n");
  return -EBUSY;
 }

 return 0;
}
