
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysinfo_3_2_2 {TYPE_1__* vm; int count; } ;
struct TYPE_4__ {int machine_flags; } ;
struct TYPE_3__ {int cpi; } ;


 int MACHINE_FLAG_KVM ;
 int MACHINE_FLAG_LPAR ;
 int MACHINE_FLAG_VM ;
 TYPE_2__ S390_lowcore ;
 int memcmp (int ,char*,int) ;
 int stsi (struct sysinfo_3_2_2*,int,int,int) ;
 int sysinfo_page ;

void detect_machine_type(void)
{
 struct sysinfo_3_2_2 *vmms = (struct sysinfo_3_2_2 *)&sysinfo_page;


 if (stsi(((void*)0), 0, 0, 0) <= 2) {
  S390_lowcore.machine_flags |= MACHINE_FLAG_LPAR;
  return;
 }

 if (stsi(vmms, 3, 2, 2) || !vmms->count)
  return;


 if (!memcmp(vmms->vm[0].cpi, "\xd2\xe5\xd4", 3))
  S390_lowcore.machine_flags |= MACHINE_FLAG_KVM;
 else if (!memcmp(vmms->vm[0].cpi, "\xa9\x61\xe5\xd4", 4))
  S390_lowcore.machine_flags |= MACHINE_FLAG_VM;
}
