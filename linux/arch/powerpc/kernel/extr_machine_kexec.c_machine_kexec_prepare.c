
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {int dummy; } ;
struct TYPE_2__ {int (* machine_kexec_prepare ) (struct kimage*) ;} ;


 int default_machine_kexec_prepare (struct kimage*) ;
 TYPE_1__ ppc_md ;
 int stub1 (struct kimage*) ;

int machine_kexec_prepare(struct kimage *image)
{
 if (ppc_md.machine_kexec_prepare)
  return ppc_md.machine_kexec_prepare(image);
 else
  return default_machine_kexec_prepare(image);
}
