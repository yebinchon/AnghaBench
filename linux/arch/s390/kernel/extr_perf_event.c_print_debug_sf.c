
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_qsi_info_block {int dear; int tear; int dsdes; int cd; int ed; scalar_t__ ad; int bsdes; int cs; int es; scalar_t__ as; int cpu_speed; int max_sampl_rate; int min_sampl_rate; } ;
typedef int si ;


 int memset (struct hws_qsi_info_block*,int ,int) ;
 int pr_info (char*,int,scalar_t__,int ,int ,int ,int ,...) ;
 scalar_t__ qsi (struct hws_qsi_info_block*) ;
 int smp_processor_id () ;

__attribute__((used)) static void print_debug_sf(void)
{
 struct hws_qsi_info_block si;
 int cpu = smp_processor_id();

 memset(&si, 0, sizeof(si));
 if (qsi(&si))
  return;

 pr_info("CPU[%i] CPUM_SF: basic=%i diag=%i min=%lu max=%lu cpu_speed=%u\n",
  cpu, si.as, si.ad, si.min_sampl_rate, si.max_sampl_rate,
  si.cpu_speed);

 if (si.as)
  pr_info("CPU[%i] CPUM_SF: Basic-sampling: a=%i e=%i c=%i"
   " bsdes=%i tear=%016lx dear=%016lx\n", cpu,
   si.as, si.es, si.cs, si.bsdes, si.tear, si.dear);
 if (si.ad)
  pr_info("CPU[%i] CPUM_SF: Diagnostic-sampling: a=%i e=%i c=%i"
   " dsdes=%i tear=%016lx dear=%016lx\n", cpu,
   si.ad, si.ed, si.cd, si.dsdes, si.tear, si.dear);
}
