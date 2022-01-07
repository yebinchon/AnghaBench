
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cpuinfo_x86 {char* x86_vendor_id; int x86_vendor; } ;
struct TYPE_4__ {int c_x86_vendor; scalar_t__* c_ident; } ;


 int X86_VENDOR_NUM ;
 int X86_VENDOR_UNKNOWN ;
 TYPE_1__** cpu_devs ;
 TYPE_1__ default_cpu ;
 int pr_err_once (char*,char*) ;
 int strcmp (char*,scalar_t__) ;
 TYPE_1__* this_cpu ;

__attribute__((used)) static void get_cpu_vendor(struct cpuinfo_x86 *c)
{
 char *v = c->x86_vendor_id;
 int i;

 for (i = 0; i < X86_VENDOR_NUM; i++) {
  if (!cpu_devs[i])
   break;

  if (!strcmp(v, cpu_devs[i]->c_ident[0]) ||
      (cpu_devs[i]->c_ident[1] &&
       !strcmp(v, cpu_devs[i]->c_ident[1]))) {

   this_cpu = cpu_devs[i];
   c->x86_vendor = this_cpu->c_x86_vendor;
   return;
  }
 }

 pr_err_once("CPU: vendor_id '%s' unknown, using generic init.\n" "CPU: Your system may be unstable.\n", v);


 c->x86_vendor = X86_VENDOR_UNKNOWN;
 this_cpu = &default_cpu;
}
