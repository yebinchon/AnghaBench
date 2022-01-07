
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int jiffies_to_msecs (unsigned long) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void seq_print_age_or_dash(struct seq_file *m, bool valid, unsigned long dt)
{
 if (valid)
  seq_printf(m, "\t%d", jiffies_to_msecs(dt));
 else
  seq_printf(m, "\t-");
}
