
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ type; } ;


 scalar_t__ KEXEC_TYPE_CRASH ;
 int __machine_kexec ;
 int kdump_csum_valid (struct kimage*) ;
 int smp_call_ipl_cpu (int ,struct kimage*) ;
 int smp_send_stop () ;
 int tracer_disable () ;

void machine_kexec(struct kimage *image)
{
 if (image->type == KEXEC_TYPE_CRASH && !kdump_csum_valid(image))
  return;
 tracer_disable();
 smp_send_stop();
 smp_call_ipl_cpu(__machine_kexec, image);
}
