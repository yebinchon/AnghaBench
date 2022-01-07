
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuid {int machine; } ;
struct TYPE_2__ {int csvn; int cfvn; } ;
struct cpu_cf_events {TYPE_1__ info; } ;
struct cf_trailer_entry {int speed; int clock_base; int timestamp; int tod_base; scalar_t__ cpu_speed; int mach_type; int csvn; int cfvn; } ;
typedef int __u64 ;


 scalar_t__ cf_diag_cpu_speed ;
 int cpu_cf_events ;
 int get_cpu_id (struct cpuid*) ;
 int memcpy (int *,int *,int) ;
 int store_tod_clock (int *) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;
 int * tod_clock_base ;

__attribute__((used)) static void cf_diag_trailer(struct cf_trailer_entry *te)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);
 struct cpuid cpuid;

 te->cfvn = cpuhw->info.cfvn;
 te->csvn = cpuhw->info.csvn;

 get_cpu_id(&cpuid);
 te->mach_type = cpuid.machine;
 te->cpu_speed = cf_diag_cpu_speed;
 if (te->cpu_speed)
  te->speed = 1;
 te->clock_base = 1;
 memcpy(&te->tod_base, &tod_clock_base[1], 8);
 store_tod_clock((__u64 *)&te->timestamp);
}
