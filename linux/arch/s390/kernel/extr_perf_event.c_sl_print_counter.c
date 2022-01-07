
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cpumf_ctr_info {int auth_ctl; int csvn; int cfvn; } ;
typedef int ci ;


 int memset (struct cpumf_ctr_info*,int ,int) ;
 scalar_t__ qctri (struct cpumf_ctr_info*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static void sl_print_counter(struct seq_file *m)
{
 struct cpumf_ctr_info ci;

 memset(&ci, 0, sizeof(ci));
 if (qctri(&ci))
  return;

 seq_printf(m, "CPU-MF: Counter facility: version=%u.%u "
     "authorization=%04x\n", ci.cfvn, ci.csvn, ci.auth_ctl);
}
