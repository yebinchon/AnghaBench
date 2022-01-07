
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct hws_qsi_info_block {int dsdes; scalar_t__ ad; int bsdes; scalar_t__ as; int cpu_speed; int max_sampl_rate; int min_sampl_rate; } ;
typedef int si ;


 int memset (struct hws_qsi_info_block*,int ,int) ;
 scalar_t__ qsi (struct hws_qsi_info_block*) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static void sl_print_sampling(struct seq_file *m)
{
 struct hws_qsi_info_block si;

 memset(&si, 0, sizeof(si));
 if (qsi(&si))
  return;

 if (!si.as && !si.ad)
  return;

 seq_printf(m, "CPU-MF: Sampling facility: min_rate=%lu max_rate=%lu"
     " cpu_speed=%u\n", si.min_sampl_rate, si.max_sampl_rate,
     si.cpu_speed);
 if (si.as)
  seq_printf(m, "CPU-MF: Sampling facility: mode=basic"
      " sample_size=%u\n", si.bsdes);
 if (si.ad)
  seq_printf(m, "CPU-MF: Sampling facility: mode=diagnostic"
      " sample_size=%u\n", si.dsdes);
}
