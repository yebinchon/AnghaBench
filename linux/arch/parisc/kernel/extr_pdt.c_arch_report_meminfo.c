
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int pdt_entries; int pdt_size; } ;


 scalar_t__ PDT_NONE ;
 TYPE_1__ pdt_status ;
 scalar_t__ pdt_type ;
 int seq_printf (struct seq_file*,char*,int ) ;

void arch_report_meminfo(struct seq_file *m)
{
 if (pdt_type == PDT_NONE)
  return;

 seq_printf(m, "PDT_max_entries: %7lu\n",
   pdt_status.pdt_size);
 seq_printf(m, "PDT_cur_entries: %7lu\n",
   pdt_status.pdt_entries);
}
