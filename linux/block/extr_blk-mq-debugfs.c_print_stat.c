
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_rq_stat {int max; int min; int mean; scalar_t__ nr_samples; } ;


 int seq_printf (struct seq_file*,char*,scalar_t__,int ,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_stat(struct seq_file *m, struct blk_rq_stat *stat)
{
 if (stat->nr_samples) {
  seq_printf(m, "samples=%d, mean=%llu, min=%llu, max=%llu",
      stat->nr_samples, stat->mean, stat->min, stat->max);
 } else {
  seq_puts(m, "samples=0");
 }
}
