
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {int x86; scalar_t__* x86_vendor_id; } ;
struct TYPE_2__ {int (* c_identify ) (struct cpuinfo_x86*) ;} ;


 int X86_EFLAGS_AC ;
 int X86_VENDOR_NUM ;
 TYPE_1__** cpu_devs ;
 scalar_t__ flag_is_changeable_p (int ) ;
 int get_cpu_vendor (struct cpuinfo_x86*) ;
 int stub1 (struct cpuinfo_x86*) ;

__attribute__((used)) static void identify_cpu_without_cpuid(struct cpuinfo_x86 *c)
{
}
