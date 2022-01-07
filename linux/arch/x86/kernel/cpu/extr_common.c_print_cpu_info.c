
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {scalar_t__ x86_vendor; scalar_t__ cpuid_level; char* x86_vendor_id; int x86_stepping; int x86_model; int x86; scalar_t__* x86_model_id; } ;
struct TYPE_2__ {char* c_vendor; } ;


 scalar_t__ X86_VENDOR_NUM ;
 int pr_cont (char*,...) ;
 int strstr (scalar_t__*,char const*) ;
 TYPE_1__* this_cpu ;

void print_cpu_info(struct cpuinfo_x86 *c)
{
 const char *vendor = ((void*)0);

 if (c->x86_vendor < X86_VENDOR_NUM) {
  vendor = this_cpu->c_vendor;
 } else {
  if (c->cpuid_level >= 0)
   vendor = c->x86_vendor_id;
 }

 if (vendor && !strstr(c->x86_model_id, vendor))
  pr_cont("%s ", vendor);

 if (c->x86_model_id[0])
  pr_cont("%s", c->x86_model_id);
 else
  pr_cont("%d86", c->x86);

 pr_cont(" (family: 0x%x, model: 0x%x", c->x86, c->x86_model);

 if (c->x86_stepping || c->cpuid_level >= 0)
  pr_cont(", stepping: 0x%x)\n", c->x86_stepping);
 else
  pr_cont(")\n");
}
