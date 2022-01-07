
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sig; } ;
struct ucode_cpu_info {TYPE_1__ cpu_sig; } ;
struct cpio_data {int dummy; } ;


 int CONFIG_X86_32 ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ __pa_nodebug (void*) ;
 struct cpio_data find_microcode_in_initrd (char const*,int) ;
 int get_builtin_microcode (struct cpio_data*,int ) ;
 void* ucode_cpu_info ;
 void* ucode_path ;
 int x86_family (unsigned int) ;

__attribute__((used)) static void __load_ucode_amd(unsigned int cpuid_1_eax, struct cpio_data *ret)
{
 struct ucode_cpu_info *uci;
 struct cpio_data cp;
 const char *path;
 bool use_pa;

 if (IS_ENABLED(CONFIG_X86_32)) {
  uci = (struct ucode_cpu_info *)__pa_nodebug(ucode_cpu_info);
  path = (const char *)__pa_nodebug(ucode_path);
  use_pa = 1;
 } else {
  uci = ucode_cpu_info;
  path = ucode_path;
  use_pa = 0;
 }

 if (!get_builtin_microcode(&cp, x86_family(cpuid_1_eax)))
  cp = find_microcode_in_initrd(path, use_pa);


 uci->cpu_sig.sig = cpuid_1_eax;

 *ret = cp;
}
