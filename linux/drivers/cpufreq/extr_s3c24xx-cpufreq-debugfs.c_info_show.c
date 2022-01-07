
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {scalar_t__ dvs; int arm_divisor; int p_divisor; int h_divisor; } ;
struct TYPE_3__ {int armclk; int hclk; int hclk_tns; int fclk; } ;
struct s3c_cpufreq_config {int lock_pll; TYPE_2__ divs; int max; TYPE_1__ freq; } ;


 int print_ns (int ) ;
 struct s3c_cpufreq_config* s3c_cpufreq_getconfig () ;
 int seq_printf (struct seq_file*,char*,...) ;
 int show_max (struct seq_file*,int *) ;

__attribute__((used)) static int info_show(struct seq_file *seq, void *p)
{
 struct s3c_cpufreq_config *cfg;

 cfg = s3c_cpufreq_getconfig();
 if (!cfg) {
  seq_printf(seq, "no configuration registered\n");
  return 0;
 }

 seq_printf(seq, "  FCLK %ld Hz\n", cfg->freq.fclk);
 seq_printf(seq, "  HCLK %ld Hz (%lu.%lu ns)\n",
     cfg->freq.hclk, print_ns(cfg->freq.hclk_tns));
 seq_printf(seq, "  PCLK %ld Hz\n", cfg->freq.hclk);
 seq_printf(seq, "ARMCLK %ld Hz\n", cfg->freq.armclk);
 seq_printf(seq, "\n");

 show_max(seq, &cfg->max);

 seq_printf(seq, "Divisors: P=%d, H=%d, A=%d, dvs=%s\n",
     cfg->divs.h_divisor, cfg->divs.p_divisor,
     cfg->divs.arm_divisor, cfg->divs.dvs ? "on" : "off");
 seq_printf(seq, "\n");

 seq_printf(seq, "lock_pll=%u\n", cfg->lock_pll);

 return 0;
}
