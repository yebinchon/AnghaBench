
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct s3c_cpufreq_config {struct s3c_cpufreq_board* board; } ;
struct s3c_cpufreq_board {int max; int need_io; int auto_io; int refresh; } ;


 struct s3c_cpufreq_config* s3c_cpufreq_getconfig () ;
 int seq_printf (struct seq_file*,char*,...) ;
 int show_max (struct seq_file*,int *) ;

__attribute__((used)) static int board_show(struct seq_file *seq, void *p)
{
 struct s3c_cpufreq_config *cfg;
 struct s3c_cpufreq_board *brd;

 cfg = s3c_cpufreq_getconfig();
 if (!cfg) {
  seq_printf(seq, "no configuration registered\n");
  return 0;
 }

 brd = cfg->board;
 if (!brd) {
  seq_printf(seq, "no board definition set?\n");
  return 0;
 }

 seq_printf(seq, "SDRAM refresh %u ns\n", brd->refresh);
 seq_printf(seq, "auto_io=%u\n", brd->auto_io);
 seq_printf(seq, "need_io=%u\n", brd->need_io);

 show_max(seq, &brd->max);


 return 0;
}
