
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio_data {int dummy; } ;


 int CONFIG_X86_32 ;
 scalar_t__ IS_ENABLED (int ) ;
 int get_builtin_firmware (struct cpio_data*,char*) ;
 int native_cpuid (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int sprintf (char*,char*,int,int,int) ;
 int x86_family (unsigned int) ;
 int x86_model (unsigned int) ;
 int x86_stepping (unsigned int) ;

__attribute__((used)) static bool load_builtin_intel_microcode(struct cpio_data *cp)
{
 unsigned int eax = 1, ebx, ecx = 0, edx;
 char name[30];

 if (IS_ENABLED(CONFIG_X86_32))
  return 0;

 native_cpuid(&eax, &ebx, &ecx, &edx);

 sprintf(name, "intel-ucode/%02x-%02x-%02x",
        x86_family(eax), x86_model(eax), x86_stepping(eax));

 return get_builtin_firmware(cp, name);
}
