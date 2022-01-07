
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {int retired; int cycles; int width; int generic; } ;
struct TYPE_5__ {TYPE_1__ pal_perf_mon_info_s; } ;
typedef TYPE_2__ pal_perf_mon_info_u_t ;


 int bitregister_process (struct seq_file*,int*,int) ;
 scalar_t__ ia64_pal_perf_mon_info (int*,TYPE_2__*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int perfmon_info(struct seq_file *m)
{
 u64 pm_buffer[16];
 pal_perf_mon_info_u_t pm_info;

 if (ia64_pal_perf_mon_info(pm_buffer, &pm_info) != 0)
  return 0;

 seq_printf(m,
     "PMC/PMD pairs                 : %d\n"
     "Counter width                 : %d bits\n"
     "Cycle event number            : %d\n"
     "Retired event number          : %d\n"
     "Implemented PMC               : ",
     pm_info.pal_perf_mon_info_s.generic,
     pm_info.pal_perf_mon_info_s.width,
     pm_info.pal_perf_mon_info_s.cycles,
     pm_info.pal_perf_mon_info_s.retired);

 bitregister_process(m, pm_buffer, 256);
 seq_puts(m, "\nImplemented PMD               : ");
 bitregister_process(m, pm_buffer+4, 256);
 seq_puts(m, "\nCycles count capable          : ");
 bitregister_process(m, pm_buffer+8, 256);
 seq_puts(m, "\nRetired bundles count capable : ");
 bitregister_process(m, pm_buffer+12, 256);
 seq_putc(m, '\n');
 return 0;
}
