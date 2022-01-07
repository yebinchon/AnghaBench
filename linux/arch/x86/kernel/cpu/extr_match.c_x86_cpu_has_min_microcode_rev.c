
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_cpu_desc {scalar_t__ x86_microcode_rev; } ;
struct TYPE_2__ {scalar_t__ microcode; } ;


 TYPE_1__ boot_cpu_data ;
 struct x86_cpu_desc* x86_match_cpu_with_stepping (struct x86_cpu_desc const*) ;

bool x86_cpu_has_min_microcode_rev(const struct x86_cpu_desc *table)
{
 const struct x86_cpu_desc *res = x86_match_cpu_with_stepping(table);

 if (!res || res->x86_microcode_rev > boot_cpu_data.microcode)
  return 0;

 return 1;
}
